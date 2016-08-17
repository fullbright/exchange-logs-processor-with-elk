@echo off
NET USE \\frem9901\e$ /u:essilor-res\_adm_afanous Essilor@2017 
robocopy \\frem9901\e$\Exchsrvr\FREM9901.log C:\Users\AFANOUS\Documents\Projects\ExchangeMigration\CollectLog\FREM9901 /MIR /XX

NET USE \\frem9902\e$ /u:essilor-res\_adm_afanous Essilor@2017
robocopy \\frem9902\e$\Exchsrvr\FREM9902.log C:\Users\AFANOUS\Documents\Projects\ExchangeMigration\CollectLog\FREM9902 /MIR /XX

NET USE \\frem0010\e$ /u:essilor-res\_adm_afanous Essilor@2017
robocopy \\frem0010\h$\Exchsrvr\FREM0010.log C:\Users\AFANOUS\Documents\Projects\ExchangeMigration\CollectLog\FREM0010 /MIR /XX