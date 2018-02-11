{-# LANGUAGE OverloadedStrings #-}
import Network.Wai
import Network.HTTP.Types
import Network.Wai.Handler.Warp (run)

app :: Application
app _ respond = do
    putStrLn "I've done some IO here."
    respond $ responseLBS
        status200
        [("Content-Type", "text/plain")]
        "Hello Web!!"

main :: IO ()
main = do
    putStrLn $ "http://localhost:3000/"
    run 8000 app
