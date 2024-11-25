-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25-Nov-2024 às 22:16
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `criatools`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `chatgpt`
--

CREATE TABLE `chatgpt` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `cookie_chatgpt` text NOT NULL,
  `ia_name` varchar(255) NOT NULL,
  `uuid_grupo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `chatgpt`
--

INSERT INTO `chatgpt` (`id`, `uuid`, `cookie_chatgpt`, `ia_name`, `uuid_grupo`) VALUES
(1, '61a6c7b6-5f28-4c94-9ffa-3aff3ccba650', '[{\"name\":\"oai-sc\",\"value\":\"0gAAAAABnOIWzNIrrH1yNJ1osVzKGZv5Y1RxHFMOUy7Ux9zhr3Nl4rvqu5F5-5UQ80hRB7L68lcbiIT-J_W6DPycq4cAcEMf7srwHjSh416eiOs_jPUMu2GVKjbtSny3x5Upw7QhVDyFsTE1ExvTu6Z3PHjilk2_gsfD9LG26iqrg1sjvCcMo0BuXM5f0Mi77nIfFywd3E9AjJUCnGe77AQXBh4JLVced5g\",\"domain\":\"chatgpt.com\",\"path\":\"/\",\"expires\":1763293491.127472,\"size\":233,\"httpOnly\":false,\"secure\":true,\"session\":false,\"sameSite\":\"Lax\",\"priority\":\"Medium\",\"sameParty\":false,\"sourceScheme\":\"Secure\"},{\"name\":\"_dd_s\",\"value\":\"rum=0&expire=1731758390508&logs=1&id=25e9d36a-3f5c-4ab9-b157-35723fbca6dd&created=1731757463217\",\"domain\":\"chatgpt.com\",\"path\":\"/\",\"expires\":1731758439,\"size\":100,\"httpOnly\":false,\"secure\":false,\"session\":false,\"sameSite\":\"Strict\",\"priority\":\"Medium\",\"sameParty\":false,\"sourceScheme\":\"Secure\"},{\"name\":\"oai-hlib\",\"value\":\"true\",\"domain\":\"chatgpt.com\",\"path\":\"/\",\"expires\":1762861490.249553,\"size\":12,\"httpOnly\":false,\"secure\":false,\"session\":false,\"sameSite\":\"Lax\",\"priority\":\"Medium\",\"sameParty\":false,\"sourceScheme\":\"Secure\"},{\"name\":\"__Secure-next-auth.session-token\",\"value\":\"eyJhbGciOiJkaXIiLCJlbmMiOiJBMjU2R0NNIn0..DjbhnOGcfJVIuzM3.Exphg0joNAJfUm5RKDeIxSirx6tCXavg_uWGr2u3oslJaq9U0GvBTQK68QZazhOHEj1XUH8L4Dm7WJDBDSjDh-n1G_7IZvXy4DIr7ZvNAMBNjQ3P05itSbMLfyU1A0Azo5918PBSV7V8cdI9Dl8HiDHneSITWE9H2OsbVnX99B4Ut2jV4Jiz4jVNzLGaTmzKDaL0_eHgd9mabIjAa-vm5XFmBh2juPcyjfqw2A6sQuKoFxClmQR7VeVspDfVkF6KHQO4IiC6znbCwJDgiSqgamEKnTOXg_FTignqyK9e16UnK7mDHJO8bdj9vrM0m3EfbMiTxaiEGiEvcKXqyA5T_DO9D8UCi-F-D3ZGV6iVHo346aVhim-Xm4L85_81RVYS0BOFDLiEQdhe1T8M8v9CXITrmeW-Lw1f6SiLlbaQyAyqUqIfwESxqiHEEMsl5tlqqRUr52NElGxKs93Dxs_eItTyJN9N2y7o-P_DDPkO2SJTpuidV0mV3reor1QGIZHso1Hui8DeF9kU69TTJiy1PATioFKZFSu9zkb4zdwHwgBfXAlTK19wO2GS9meLKlI5WA3BB0NWvXbQO4FT1HdE4nYUjVBeWFA93ugkCUOkA6ZVGdtIk6bNYjGVFGMJkUVjHoUKjSYY9460h-_oPKzOoINySUlmqM5m0_YvYWS9ou7HiHkppG7HFLFqEQWbLmymBXtCMDafrbpgidY62g4OgfVkXNF6PaaPzaxUrKeXtvanpLkxgEkHLHDbV5uNtk66BIGvxd_Exe1oKq0jAmAb9Axx7HJRadWUf0IfxenlCjD5tOixO902KNxbrHR9Gy5rloqdlGLQMXFYTWaHJpFGuEP23L5ec-erOpGK9Nb4NhCdUusIdJfBqo0KROw4t7rePDS8qQOTzVw_CW9bw4K5iljhSAxfCabtNT28TMGz6CbDXoaJ0IJ2aq-juZTMecuyJp-C88e33iIFG8BYabzabflE-TDtzb2LhbLqpA7nE7FffzMHHMOgigCFzQ6q03vjBVx16cxcJ7XH6T9x7a-0uv5bUMge0_L5yM7KUZCEvIZGvU3-pKe9imGp-nQjI02NO_8EFJAkva5Kqi4D2UKLn0-4RzNrd2z_GECdN_3V5-KpFlu1mwzGf3uvzzUvpG_IsSKTQwYnor1sSLU4mjS5naXMy_29GFNXLNHsb3bxYhibGs9wlU0DosFhUUK333Y3GLZ14diDGawbUxrbEOoSQHRVDkvFke70JqODR8pDhYuHCd_fMVbEdHsOK-z5L0d82YxmGH0Gv1rGinzF5knG332cvAFihAKmFm6kEI1Dvb8nS1Gw3E7DNWdksr90cjeGVRbMPusTJu3GQgi7tyVwRgjw4uo8bdS7cXG1OuZ5KvalDcD6mtUC0gpMrDjVFTy-Rr_jkjt_BZ9x02A1svRSUV_tqe1bgadqerSsxTHT5GKh9NwmP3sw0WK1BBAlznSraPTnIlli3L3GVKImXNlyla68EFBMjIKR4MioTkHKZ1O4aLeSsEP2FkzDM6bbI8R62CJ0hEw-cZh_-AEXzyKLN9-IycOFRuzyi5z6OREGy7hxQf4XM7XHJxRS04fW055HFjU3-4VOvOGdruV9nrBLQ9I6V5_JBPstUW4YlxriPNkCDvr6luEOvp8oVJLZRKmPIdC6xpv6jz2xHHlWpi3vnyV2yQIgp5fg-XGOQlnPjycRpSeBqL8VhMQs99f2YlwHTSoGoI6FmSS5DlW7I2jDobej138RjZwP_rviGvdLY0oRfFw2bAI6UhvSpcr5Sw1tX_WbLMHkJCS01poih-3ILDWalpUBhdEyo8DMCVrSqeYMH0EG-utpodClsjDned8UZHrHMCcofFwQd2Jnl5aP2MwhRZRnxSTnONqoi1jq83srPJ6q3VeIQbekFze4diOgCmHsI-MW-sTBgJiInnkhMkt_vSGJ1CahzQXCf5bwvyJ3cH-2VxfPTSwDNLa64dzDXRxm4Fso5DkaglD7BnyttuMNhgm_L1h2D65Lsd9DKrm-hyC31WiKnUKDK0JmkMt-ICWhVVBjQ8m5oetqaZ9B_Uxp9BgvgTStjScc2qTRQ9xmYmVyVlbq9dEPUbff6AFBSUvGtiPwvEaxuJmYZp_Ov-JvYyEEcJ_RctNV6oGB4WPuZCZ-Dl5MsHHRnfcWKB3k58BAezlErl2wkJp7GEivs1NuVDrmnESGEK9nArTkmlMu3USmGYqdOohN6FJLjkZY4wgoupfdXQlidaLOOIKDODzbeTy98phUJcqJgtXfY6pOW4xwHdS9bJCRcDp9mtWY8nefwNXusrB4Jzvfzw8rBkLjGNq-_XkbsEnwy9vrHvkp0KfNxo7ncqu2NHLZhxVjCpxb9XrYIlFUWfnLeBCRK2YN6ZGhX2o_5Jrh0dNsuL2H_5uSwm-x7U9cq5X9PRfLISSS6hQJfkSIllheuryjg1N5ponQnk6VA0wHs4oWkdSNs3I5hVlhlGJoSMCvj24MybJjzFM3eHHyD2u7VGQo6d-um8mUXO-KuXbjIAL66Yq_KcpOIZeq1IT03KAzh54Zv15gVR13RCvDw7_G2tg9ASKv8e6INZTnbB-h3eHlYiOTSqdJi6Y7sXMIg0RB-t9hfuYfcEG9vjkuJOx6ehhepWZweYan9adlRM4BOKyv6TfG0WuMax85Nym2SyTsMdMLJl4DgTmxi8wDXQvcd8SFNHwm2vvciPlNE_a-nUQz4IP33tf0pSKXLTyo08Ji4X-M6khnLppgPVyHgN73cxap33fyImR8-pvSpdpZziYMBiyzDfVBdQeUFsAbyH1712T0LdOyj8bgede_VTavsKxuQMP3BpeGT7lVvqXKCeQQm6YhMDRj8yjfUnZ2lUBTRu3P1LGAeTJqHPAfuYXSvVseFN5wygXezxQlP3NtKbuRV383QeOy5I4MwEkPJWc2fsdLPVE38MsMYLyuz-aZEtJThOr7RjCQnq7irmM62_6rQ00ghwLT8Hq5REpnSxlDeP2INHp_FXN5SMPcQJ9L1bqq3hkD1VjTx7qDUAT__dQRg4EbYdnSWxuaOj0Gdhc2yW66I0IbAFDCqZ7jd3G0fxnd9axbJbUgYLlZ.fy8-9XDfYJjRq3zO6IY3xg\",\"domain\":\".chatgpt.com\",\"path\":\"/\",\"expires\":1739533490.249494,\"size\":3217,\"httpOnly\":true,\"secure\":true,\"session\":false,\"sameSite\":\"Lax\",\"priority\":\"Medium\",\"sameParty\":false,\"sourceScheme\":\"Secure\"},{\"name\":\"oai-nav-state\",\"value\":\"1\",\"domain\":\"chatgpt.com\",\"path\":\"/\",\"expires\":1766317490.410562,\"size\":14,\"httpOnly\":false,\"secure\":false,\"session\":false,\"sameSite\":\"Lax\",\"priority\":\"Medium\",\"sameParty\":false,\"sourceScheme\":\"Secure\"},{\"name\":\"cf_clearance\",\"value\":\"VQnzvoLfpB.IwQY0rzA5gGKZKzIdlchWNWP23axNr0g-1731757463-1.2.1.1-KcShLwEvJZUAeIcigamKi8SYVu.4nQQIupa3xHNxisIVUeRv7TOZG3h9G17ULgwZ1cku55tpCDH0UHHaBydpgAZ0SqPEqaRnqfjXcMx1sbqug2s_HS83HKRgSnOWzrOhAzjubkfBPo_JbPzP30fQNvXa33APbHNAXW1KXfs2nHct00oCa.Zwv34lZ.4yZa5Fa1WrlQXpayPTC0zYh0siueUMA3X7.FuLOq6RU7SoDqZrJ8rWouqGUJ60qCoKckWz.NzOPSBxMw6snK.LmfffD.fC2dUDeM8a1nx3C2V6MmhLD6bKZU_ktAQdE96ev6hxXU9qGoxDpVs8cTrZD9MWBsdx2RTy0fxzJhVVeZ0dH.lXdVRFEquZaaqrbEksF0fS\",\"domain\":\".chatgpt.com\",\"path\":\"/\",\"expires\":1763293462.920857,\"size\":459,\"httpOnly\":true,\"secure\":true,\"session\":false,\"sameSite\":\"None\",\"priority\":\"High\",\"sameParty\":false,\"sourceScheme\":\"Secure\",\"partitionKey\":\"https://chatgpt.com\"},{\"name\":\"__cflb\",\"value\":\"0H28vzvP5FJafnkHxjEviUn5CT7tWgvhDgkWBDyMc9s\",\"domain\":\"chatgpt.com\",\"path\":\"/\",\"expires\":1731759261.389992,\"size\":49,\"httpOnly\":true,\"secure\":true,\"session\":false,\"sameSite\":\"None\",\"priority\":\"Medium\",\"sameParty\":false,\"sourceScheme\":\"Secure\"},{\"name\":\"__Host-next-auth.csrf-token\",\"value\":\"2fd1365c22ad2a007b3688f884e5a534418f6e944eaca55fbd3ff6e85fc8b743%7Cd61af9d588f912b3d5c97113c284c1b02dfdc68743fdf9302d1fa07e68a03ec6\",\"domain\":\"chatgpt.com\",\"path\":\"/\",\"expires\":-1,\"size\":158,\"httpOnly\":true,\"secure\":true,\"session\":true,\"sameSite\":\"Lax\",\"priority\":\"Medium\",\"sameParty\":false,\"sourceScheme\":\"Secure\"},{\"name\":\"__cf_bm\",\"value\":\"ArO7H9DsZJuy3.TM6Z2XmAmYmU4shNVIV4VcfWC1RO0-1731757461-1.0.1.1-j1hG0Iiategxxf_ubM4gGiRgwGg9O8Fev6Y66FAY0oxXLGpUdWr6Rx4oNREvYqxf77e9T.NpNXqYmAP.TzGoSg\",\"domain\":\".chatgpt.com\",\"path\":\"/\",\"expires\":1731759261.389902,\"size\":156,\"httpOnly\":true,\"secure\":true,\"session\":false,\"sameSite\":\"None\",\"priority\":\"Medium\",\"sameParty\":false,\"sourceScheme\":\"Secure\"},{\"name\":\"_cfuvid\",\"value\":\"93mU4jibQXN4QxHg1CsgL8.9Ig1rsss_XtYp6TTryuw-1731757461484-0.0.1.1-604800000\",\"domain\":\".chatgpt.com\",\"path\":\"/\",\"expires\":-1,\"size\":82,\"httpOnly\":true,\"secure\":true,\"session\":true,\"sameSite\":\"None\",\"priority\":\"Medium\",\"sameParty\":false,\"sourceScheme\":\"Secure\"},{\"name\":\"__Secure-next-auth.callback-url\",\"value\":\"https%3A%2F%2Fchat-identity-edge-onramp.unified-4.api.openai.com\",\"domain\":\"chatgpt.com\",\"path\":\"/\",\"expires\":-1,\"size\":95,\"httpOnly\":true,\"secure\":true,\"session\":true,\"sameSite\":\"Lax\",\"priority\":\"Medium\",\"sameParty\":false,\"sourceScheme\":\"Secure\"},{\"name\":\"oai-did\",\"value\":\"609535f7-9e4c-4fc7-adc2-17cbdcac00b9\",\"domain\":\".chatgpt.com\",\"path\":\"/\",\"expires\":1762861461.389851,\"size\":43,\"httpOnly\":false,\"secure\":false,\"session\":false,\"sameSite\":\"Lax\",\"priority\":\"Medium\",\"sameParty\":false,\"sourceScheme\":\"Secure\"}]', 'chatgpt', '2cddd454-a77b-4739-851d-824027e090dc'),
(2, '501f7a85-c4ea-42b9-9173-8d0a21f56599', '[{\"name\":\"_dd_s\",\"value\":\"rum=2&id=c4396f61-d662-4ff0-96b2-e55788e9922a&created=1731718659653&expire=1731719559653\",\"domain\":\"auth.openai.com\",\"path\":\"/\",\"expires\":1731719584,\"size\":93,\"httpOnly\":false,\"secure\":false,\"session\":false,\"sameSite\":\"Strict\",\"priority\":\"Medium\",\"sameParty\":false,\"sourceScheme\":\"Secure\"},{\"name\":\"cf_clearance\",\"value\":\"M6bdfA8R4SLtJOiPQpAHRL08P_TmpA5ymuPvOybHsWo-1731718659-1.2.1.1-G8QwovNj0QS1X3r7WW1lRxDIrXxr8Z35jb7uYjsVq83jE96RPadsF_cBb4ngY0VxylugJ.F5ypsDQOWAs8_eqm7nwfH09YBccO_AoyEGoa5vOnUrEnvKyEU.KwQY87RBHPkvSFzyjAhPwFaDyFwp7JjxCFSA0XYS.2Pn6VElsOq4nCvYdewLP3ITrmrBt6cV9IYyr4WDF3wjFkNdO.FcJBoHCCImqdYIlOZZZiyo50xleUcl8SYdC7wrPXM6QMiKAHEz5QhzkIQO4MMID1H6q8qnZPJrbY.E7Yvk8zT0jGskBsdZGJ9gGTE6GQiauj7M2NbUi6EvMhJoqwcj5gFKIYZU7iEOtQrcOJiwThe5kAUyZcqW4ixyAlxN89NvXKID\",\"domain\":\".auth.openai.com\",\"path\":\"/\",\"expires\":1763254659.806407,\"size\":459,\"httpOnly\":true,\"secure\":true,\"session\":false,\"sameSite\":\"None\",\"priority\":\"High\",\"sameParty\":false,\"sourceScheme\":\"Secure\",\"partitionKey\":\"https://openai.com\"},{\"name\":\"__cf_bm\",\"value\":\"X_6vozO_B9gS1wsS2W.iwawkMkmZeT49KUw5wQNiFX8-1731718659-1.0.1.1-DpGajx20rsCe5MPYuHIk6fgqo68lBhO1eF7LuP6WnE2NWH9fVtrziCSNR7fN36iy6dISc3l6_iUW2T0dFv2XEA\",\"domain\":\".auth.openai.com\",\"path\":\"/\",\"expires\":1731720459.429445,\"size\":156,\"httpOnly\":true,\"secure\":true,\"session\":false,\"sameSite\":\"None\",\"priority\":\"Medium\",\"sameParty\":false,\"sourceScheme\":\"Secure\"},{\"name\":\"_cfuvid\",\"value\":\"eLMF_QrxJFtOOOhcZzExq35g7YHtLeVKT6RlDdMCd4o-1731718659203-0.0.1.1-604800000\",\"domain\":\".auth.openai.com\",\"path\":\"/\",\"expires\":-1,\"size\":82,\"httpOnly\":true,\"secure\":true,\"session\":true,\"sameSite\":\"None\",\"priority\":\"Medium\",\"sameParty\":false,\"sourceScheme\":\"Secure\"},{\"name\":\"__cflb\",\"value\":\"0H28w2ZepuU3KZxNdem3ED3RBoX9nbB66P8ui1etK5P\",\"domain\":\"auth.openai.com\",\"path\":\"/\",\"expires\":1731720459.429496,\"size\":49,\"httpOnly\":true,\"secure\":true,\"session\":false,\"sameSite\":\"None\",\"priority\":\"Medium\",\"sameParty\":false,\"sourceScheme\":\"Secure\"},{\"name\":\"oai-did\",\"value\":\"713b57fe-c586-4bd3-be12-77cb7cea369c\",\"domain\":\".openai.com\",\"path\":\"/\",\"expires\":1763254661,\"size\":43,\"httpOnly\":false,\"secure\":false,\"session\":false,\"priority\":\"Medium\",\"sameParty\":false,\"sourceScheme\":\"Secure\"}]', 'chatgpt', '0e59e692-aa37-462f-91b0-8182d8c728d9'),
(3, '9e6a4941-06ac-4ac4-9c3b-51ca9a0f834a', '[{\"name\":\"_dd_s\",\"value\":\"rum=0&expire=1731719565292&logs=1&id=d75a85bd-ef66-4bb4-b76a-a4e13650a7a1&created=1731718665292\",\"domain\":\"chatgpt.com\",\"path\":\"/\",\"expires\":1731719585,\"size\":100,\"httpOnly\":false,\"secure\":false,\"session\":false,\"sameSite\":\"Strict\",\"priority\":\"Medium\",\"sameParty\":false,\"sourceScheme\":\"Secure\"},{\"name\":\"oai-sc\",\"value\":\"0gAAAAABnN-4JowUmaMumLih-cq1QCJ4JLkOXJVCsCp8f5IsNJYIFQo7vFh6bMVl9hsOXITcbk65Jw80yt23l70BGO8ykOwInRReeXQKD7pu55av6Vpx9CYhldUoFCSwYG48kyRklW4dAWhShMAx9zdyicfT2KRRUhiDg-nPKmYVp8FTAET1lsDTdYe_-KBT5HxueUNrN8oBR6aFlnFi1zECB_u5o0NfG1A\",\"domain\":\"chatgpt.com\",\"path\":\"/\",\"expires\":1763254665.610617,\"size\":233,\"httpOnly\":false,\"secure\":true,\"session\":false,\"sameSite\":\"Lax\",\"priority\":\"Medium\",\"sameParty\":false,\"sourceScheme\":\"Secure\"},{\"name\":\"cf_clearance\",\"value\":\"EzzpGrImw0fZ0fi22rkzRIyAp9eEnkcCvqC.fsZelSE-1731718664-1.2.1.1-ZS4WHn5NP3GZ30ObLa9MZ6PisKREjve357bRBmKHwAuyrskRdOd6B.pEmC0efP1NNBeLqb3.IC4CSTiIShml21A4yzUFUjV5VYbGH5IWDUyVuzzN__24ti83nTwW37FaH3Un6avLuY9.TmwKHeutoJplcrH8M0t2vKNOgqgwyRAK5OvIIJGHa0LityK9y.fRyDcUmf6Cikv3zf1Sd.ysGMH7e6EgoX.x6S3Uwxww3Bjc56ES..3uRkhaGZXR9xll2KXeCy_a30ot.jdtI6YqjqwSCY5MAsZ1zBYxuPqi3uwBStlfQss39J6gttKoNi7EYnJbHVdxknsWaDt9Ov0c685ITq2QvFrdONoC2iDTI33uiQ7Yc9ytgB2H6HZiXj50\",\"domain\":\".chatgpt.com\",\"path\":\"/\",\"expires\":1763254665.055374,\"size\":459,\"httpOnly\":true,\"secure\":true,\"session\":false,\"sameSite\":\"None\",\"priority\":\"High\",\"sameParty\":false,\"sourceScheme\":\"Secure\",\"partitionKey\":\"https://chatgpt.com\"},{\"name\":\"oai-nav-state\",\"value\":\"1\",\"domain\":\"chatgpt.com\",\"path\":\"/\",\"expires\":1766278665.046815,\"size\":14,\"httpOnly\":false,\"secure\":false,\"session\":false,\"sameSite\":\"Lax\",\"priority\":\"Medium\",\"sameParty\":false,\"sourceScheme\":\"Secure\"},{\"name\":\"__cflb\",\"value\":\"0H28vzvP5FJafnkHxjEviUn5CT7tWgvhBQ16Qmr8rFP\",\"domain\":\"chatgpt.com\",\"path\":\"/\",\"expires\":1731720463.617953,\"size\":49,\"httpOnly\":true,\"secure\":true,\"session\":false,\"sameSite\":\"None\",\"priority\":\"Medium\",\"sameParty\":false,\"sourceScheme\":\"Secure\"},{\"name\":\"_cfuvid\",\"value\":\"Vnvaahhw8vlobwOgl_x6Rb7EmM.mhhFtgyBiQ6Xiy6E-1731718663392-0.0.1.1-604800000\",\"domain\":\".chatgpt.com\",\"path\":\"/\",\"expires\":-1,\"size\":82,\"httpOnly\":true,\"secure\":true,\"session\":true,\"sameSite\":\"None\",\"priority\":\"Medium\",\"sameParty\":false,\"sourceScheme\":\"Secure\"},{\"name\":\"__Host-next-auth.csrf-token\",\"value\":\"71fc2dcccc61c7580ef3782b8f6db22d01a3e88bedb1f7c05047e1715d322e49%7C7718d0c7bcc80e5561e864a1c22d03dbfca804b7cfab6052d5c357e2069c00df\",\"domain\":\"chatgpt.com\",\"path\":\"/\",\"expires\":-1,\"size\":158,\"httpOnly\":true,\"secure\":true,\"session\":true,\"sameSite\":\"Lax\",\"priority\":\"Medium\",\"sameParty\":false,\"sourceScheme\":\"Secure\"},{\"name\":\"__cf_bm\",\"value\":\"uGDPw3eK5qnOAFgoFnbBcblhsX_cyv1vIS1MpYEzFSs-1731718663-1.0.1.1-WXUyAeytBDj5zSPN0LWY.xuLGataBgG1iOsHhTquR6.9hEH_7TiIk_wxbLXvikDjsjlT04HS3nz6bywR0Fz0iQ\",\"domain\":\".chatgpt.com\",\"path\":\"/\",\"expires\":1731720463.617888,\"size\":156,\"httpOnly\":true,\"secure\":true,\"session\":false,\"sameSite\":\"None\",\"priority\":\"Medium\",\"sameParty\":false,\"sourceScheme\":\"Secure\"},{\"name\":\"oai-did\",\"value\":\"55b3b7c3-b46e-4cc6-a7e2-d3a378dbac67\",\"domain\":\".chatgpt.com\",\"path\":\"/\",\"expires\":1762822663.617857,\"size\":43,\"httpOnly\":false,\"secure\":false,\"session\":false,\"sameSite\":\"Lax\",\"priority\":\"Medium\",\"sameParty\":false,\"sourceScheme\":\"Secure\"},{\"name\":\"__Secure-next-auth.callback-url\",\"value\":\"https%3A%2F%2Fchat-identity-edge-onramp.unified-4.api.openai.com\",\"domain\":\"chatgpt.com\",\"path\":\"/\",\"expires\":-1,\"size\":95,\"httpOnly\":true,\"secure\":true,\"session\":true,\"sameSite\":\"Lax\",\"priority\":\"Medium\",\"sameParty\":false,\"sourceScheme\":\"Secure\"}]', 'chatgpt', '75d6360f-fe19-4a89-8e2d-3d943d3a1a5a');

-- --------------------------------------------------------

--
-- Estrutura da tabela `grupos`
--

CREATE TABLE `grupos` (
  `id` int(11) NOT NULL,
  `uuid_grupo` varchar(255) NOT NULL,
  `limit` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `count_users` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `grupos`
--

INSERT INTO `grupos` (`id`, `uuid_grupo`, `limit`, `status`, `count_users`) VALUES
(1, '2cddd454-a77b-4739-851d-824027e090dc', 100, 'ativo', 1),
(2, '0e59e692-aa37-462f-91b0-8182d8c728d9', 100, 'ativo', 0),
(3, '75d6360f-fe19-4a89-8e2d-3d943d3a1a5a', 100, 'ativo', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `logins_ias`
--

CREATE TABLE `logins_ias` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `uuid_grupo` varchar(255) NOT NULL,
  `nome_ia` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `logins_ias`
--

INSERT INTO `logins_ias` (`id`, `email`, `senha`, `uuid_grupo`, `nome_ia`) VALUES
(1, 'grupo01@criatools.com.br', 'jonas2022#AA', '2cddd454-a77b-4739-851d-824027e090dc', 'chatgpt'),
(2, 'grupo02@criatools.com.br', 'jonas2022#AA', '0e59e692-aa37-462f-91b0-8182d8c728d9', 'chatgpt'),
(3, 'grupo03@criatools.com.br', 'jonas2022#AA', '75d6360f-fe19-4a89-8e2d-3d943d3a1a5a', 'chatgpt');

-- --------------------------------------------------------

--
-- Estrutura da tabela `proxy`
--

CREATE TABLE `proxy` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `proxyserver` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` text NOT NULL,
  `plano` varchar(255) NOT NULL,
  `liberado` int(11) NOT NULL,
  `uuid_grupo` varchar(255) NOT NULL,
  `id_subscription` varchar(255) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `asaas_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`id`, `uuid`, `nome`, `email`, `senha`, `plano`, `liberado`, `uuid_grupo`, `id_subscription`, `customer_id`, `asaas_data`) VALUES
(1, 'fa5a10f6-5b61-42ec-9084-d82c6ff91cb9', 'jonas', 'arthur@gmail.com', '$2b$10$2aNQuZNBtM9i9YYMtartTeQGrf/RXt61DniqkFAWKvF3KBCPNbRMy', 'month', 1, '2cddd454-a77b-4739-851d-824027e090dc', '', '', ''),
(2, '2cec9f69-6325-4f03-ac80-1dd02f75792e', 'jonas costa de lima', 'jonascosta02919@gmail.com', '$2b$10$LyA7wtIT7HeMzm5ptmGdLe4QbvEREJhJQjT3b8n/zmUP1tdkeMcZq', 'MONTHLY', 1, '2cddd454-a77b-4739-851d-824027e090dc', 'sub_5ekperjwkq19hvqa', 'cus_000006358747', '{\"object\":\"subscription\",\"id\":\"sub_5ekperjwkq19hvqa\",\"dateCreated\":\"2024-11-20\",\"customer\":\"cus_000006358747\",\"paymentLink\":null,\"value\":49.9,\"nextDueDate\":\"2024-12-20\",\"cycle\":\"MONTHLY\",\"description\":\"Assinatura Criatools\",\"billingType\":\"CREDIT_CARD\",\"deleted\":false,\"status\":\"ACTIVE\",\"externalReference\":null,\"creditCard\":{\"creditCardNumber\":\"4243\",\"creditCardBrand\":\"VISA\",\"creditCardToken\":\"86afcb03-2225-43a5-9b00-fa46e1330660\"},\"sendPaymentByPostalService\":false,\"fine\":{\"value\":0,\"type\":\"FIXED\"},\"interest\":{\"value\":0,\"type\":\"PERCENTAGE\"},\"split\":null}'),
(3, '247dcd92-00df-4271-b613-3a21202a841e', 'jonas costa de lima', 'jonascosta02919@gmail.com', '$2b$10$B8APC2cZdKdzhkLeOR/OBOQkFBizhsY8Exf5CBLeWBnVQS8RxxiB2', 'MONTHLY', 1, '2cddd454-a77b-4739-851d-824027e090dc', 'sub_cr4vieq0v6yv5o8w', 'cus_000006358755', '{\"object\":\"subscription\",\"id\":\"sub_cr4vieq0v6yv5o8w\",\"dateCreated\":\"2024-11-20\",\"customer\":\"cus_000006358755\",\"paymentLink\":null,\"value\":49.9,\"nextDueDate\":\"2024-12-20\",\"cycle\":\"MONTHLY\",\"description\":\"Assinatura Criatools\",\"billingType\":\"CREDIT_CARD\",\"deleted\":false,\"status\":\"ACTIVE\",\"externalReference\":null,\"creditCard\":{\"creditCardNumber\":\"4243\",\"creditCardBrand\":\"VISA\",\"creditCardToken\":\"30b7a958-c534-4c88-9b3e-52dbdbcf5e87\"},\"sendPaymentByPostalService\":false,\"fine\":{\"value\":0,\"type\":\"FIXED\"},\"interest\":{\"value\":0,\"type\":\"PERCENTAGE\"},\"split\":null}'),
(4, '09eeb023-f07b-423a-a985-a1574bb5186f', 'jonas costa de lima', 'jonascosta02919@gmail.com', '$2b$10$gnr5EZot65u/zwCgLSmkC.A/fb9yk3TuDSLPmzO/eYLEABGMBpp1q', 'MONTHLY', 1, '2cddd454-a77b-4739-851d-824027e090dc', 'sub_5nv597a6qzhontdg', 'cus_000006359080', '{\"object\":\"subscription\",\"id\":\"sub_5nv597a6qzhontdg\",\"dateCreated\":\"2024-11-20\",\"customer\":\"cus_000006359080\",\"paymentLink\":null,\"value\":49.9,\"nextDueDate\":\"2024-12-20\",\"cycle\":\"MONTHLY\",\"description\":\"Assinatura Criatools\",\"billingType\":\"CREDIT_CARD\",\"deleted\":false,\"status\":\"ACTIVE\",\"externalReference\":null,\"creditCard\":{\"creditCardNumber\":\"4243\",\"creditCardBrand\":\"VISA\",\"creditCardToken\":\"e7e6deb6-e9b4-4190-82ba-7f2af1a4c684\"},\"sendPaymentByPostalService\":false,\"fine\":{\"value\":0,\"type\":\"FIXED\"},\"interest\":{\"value\":0,\"type\":\"PERCENTAGE\"},\"split\":null}'),
(5, '9af0c43e-c5ed-4cfa-97a1-7f77e82cc9b4', 'jonas costa de lima', 'jonascosta02919@gmail.com', '$2b$10$g3MFT1co057U83tOXUfGMuJCWzqkUp1U0p4SQ44ItZnnmYZcFYbTW', 'MONTHLY', 1, '2cddd454-a77b-4739-851d-824027e090dc', 'sub_gmos5ehrvx6qmj1s', 'cus_000006359081', '{\"object\":\"subscription\",\"id\":\"sub_gmos5ehrvx6qmj1s\",\"dateCreated\":\"2024-11-20\",\"customer\":\"cus_000006359081\",\"paymentLink\":null,\"value\":49.9,\"nextDueDate\":\"2024-12-20\",\"cycle\":\"MONTHLY\",\"description\":\"Assinatura Criatools\",\"billingType\":\"CREDIT_CARD\",\"deleted\":false,\"status\":\"ACTIVE\",\"externalReference\":null,\"creditCard\":{\"creditCardNumber\":\"2434\",\"creditCardBrand\":\"VISA\",\"creditCardToken\":\"c4f9708d-8b85-4a59-9a12-f76feaa44641\"},\"sendPaymentByPostalService\":false,\"fine\":{\"value\":0,\"type\":\"FIXED\"},\"interest\":{\"value\":0,\"type\":\"PERCENTAGE\"},\"split\":null}');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `chatgpt`
--
ALTER TABLE `chatgpt`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `logins_ias`
--
ALTER TABLE `logins_ias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `proxy`
--
ALTER TABLE `proxy`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `chatgpt`
--
ALTER TABLE `chatgpt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `grupos`
--
ALTER TABLE `grupos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `logins_ias`
--
ALTER TABLE `logins_ias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `proxy`
--
ALTER TABLE `proxy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
