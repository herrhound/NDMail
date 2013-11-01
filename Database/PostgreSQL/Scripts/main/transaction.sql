CREATE TABLE main.transaction
(
  transactionId SERIAL PRIMARY KEY    NOT NULL,
  userId        UUID                  NOT NULL,
  timestamp     TIMESTAMP             NOT NULL
);

ALTER TABLE main.transaction
ADD CONSTRAINT main_transaction_userId FOREIGN KEY (userId)
REFERENCES auth.Users MATCH SIMPLE;