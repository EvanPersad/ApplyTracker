-- Users and companies to help get started
CREATE TABLE app_user (
  id BIGSERIAL PRIMARY KEY,
  email TEXT UNIQUE NOT NULL,
  full_name TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE company (
  id BIGSERIAL PRIMARY KEY,
  name_of_company TEXT NOT NULL,
  website TEXT,
  location_city TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  UNIQUE (name, website)
);