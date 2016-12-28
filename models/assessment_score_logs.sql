CREATE TABLE IF NOT EXISTS assessment_score_logs (
    id BIGSERIAL PRIMARY KEY,
    date TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    points DOUBLE PRECISION,
    points_in_grading DOUBLE PRECISION,
    max_points DOUBLE PRECISION,
    score_perc DOUBLE PRECISION,
    score_perc_in_grading DOUBLE PRECISION,
    assessment_instance_id BIGINT NOT NULL REFERENCES assessment_instances ON DELETE CASCADE ON UPDATE CASCADE,
    auth_user_id BIGINT REFERENCES users ON DELETE CASCADE ON UPDATE CASCADE
);

ALTER TABLE assessment_score_logs ALTER COLUMN score_perc SET DATA TYPE DOUBLE PRECISION;
ALTER TABLE assessment_score_logs ALTER COLUMN score_perc_in_grading SET DATA TYPE DOUBLE PRECISION;

ALTER TABLE assessment_score_logs ALTER COLUMN id SET DATA TYPE BIGINT;
ALTER TABLE assessment_score_logs ALTER COLUMN assessment_instance_id SET DATA TYPE BIGINT;
ALTER TABLE assessment_score_logs ALTER COLUMN auth_user_id SET DATA TYPE BIGINT;