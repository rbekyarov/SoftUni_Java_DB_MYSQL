ALTER TABLE peaks
DROP FOREIGN KEY fk_peaks_mountains;

ALTER TABLE peaks
ADD CONSTRAINT fk_peaks_mountains FOREIGN KEY (mountain_id)
REFERENCES mountains(id)
ON UPDATE CASCADE
ON DELETE CASCADE;