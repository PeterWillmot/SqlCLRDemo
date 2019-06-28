﻿--------------------------------------------------------------------------------
--     This code was generated by a tool.
--
--     Changes to this file may cause incorrect behavior and will be lost if
--     the code is regenerated.
--------------------------------------------------------------------------------

CREATE FUNCTION [dbo].[GetFastTokenLength] (@list [nvarchar](MAX), @delimiter [nchar](1), @tokenOrdinal [int])
RETURNS [int]
AS EXTERNAL NAME [SqlClassLibrary].[UserDefinedFunctions].[GetFastTokenLength];

GO

CREATE FUNCTION [dbo].[IsValidEMailAddress] (@emailAddress [nvarchar](MAX))
RETURNS [bit]
AS EXTERNAL NAME [SqlClassLibrary].[UserDefinedFunctions].[IsValidEMailAddress];

GO

CREATE ASSEMBLY [SqlClassLibrary] AUTHORIZATION [dbo]
FROM 0x4D5A90000300000004000000FFFF0000B800000000000000400000000000000000000000000000000000000000000000000000000000000000000000800000000E1FBA0E00B409CD21B8014CCD21546869732070726F6772616D2063616E6E6F742062652072756E20696E20444F53206D6F64652E0D0D0A2400000000000000504500004C0103007673155D0000000000000000E00022200B013000001000000006000000000000522F0000002000000040000000000010002000000002000004000000000000000600000000000000008000000002000000000000030060850000100000100000000010000010000000000000100000000000000000000000002F00004F00000000400000D803000000000000000000000000000000000000006000000C00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000080000000000000000000000082000004800000000000000000000002E74657874000000580F0000002000000010000000020000000000000000000000000000200000602E72737263000000D8030000004000000004000000120000000000000000000000000000400000402E72656C6F6300000C0000000060000000020000001600000000000000000000000000004000004200000000000000000000000000000000342F0000000000004800000002000500C0200000400E0000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000013300500310000000100001102280D00000A2D270416322302178D120000012516039D6F0E00000A0A062C0F068E6904310906049A6F0F00000A2A152A5A02280D00000A2D0C7E01000004026F1000000A2A162A1E02281100000A2A46720100007017731200000A80010000042A000042534A4201000100000000000C00000076342E302E33303331390000000005006C00000044020000237E0000B00200000C03000023537472696E677300000000BC0500001807000023555300D40C0000100000002347554944000000E40C00005C01000023426C6F620000000000000002000001571502000900000000FA013300160000010000001300000002000000010000000400000004000000120000000D00000001000000010000000300000000009E010100000000000600D900440206004601440206002E0012020F006402000006005600B9010600BC00B90106008800B90106002D01B9010600F900B90106001201B90106006D00B9010600420025020600D502B2010A00E70273020E00A700DA010E001F00DA0106006401B2010600CB01B2010A00A7027302000000000100000000000100010001001000920200003500010001003100F501440050200000000096007E01480001008D20000000009600B4021F000400A420000000008618050206000500AC200000000091180B024F00050000000100E20200000200D00100000300910100000100C802090005020100110005020600190005020A002900050210003100050210003900050210004100050210004900050210005100050210005900050210006100050215007900050206008900FD021F008900DC022400890073012B0071006B012F0069000502060071000502340020006300C9002E000B0053002E0013005C002E001B007B002E00230084002E002B0093002E00330093002E003B0099002E00430084002E004B00A8002E00530093002E005B00930040006300C9001A000480000001000000CE1B8314000000000000ED0200000400000000000000000000003B001600000000000400000000000000000000003B00B201000000000400000000000000000000003B000A000000000000000000003C4D6F64756C653E0053797374656D2E44617461006D73636F726C696200446174614163636573734B696E640044656275676761626C6541747472696275746500436F6D56697369626C6541747472696275746500417373656D626C795469746C6541747472696275746500417373656D626C7954726164656D61726B41747472696275746500417373656D626C79436F6E66696775726174696F6E4174747269627574650053716C46756E6374696F6E41747472696275746500417373656D626C794465736372697074696F6E41747472696275746500436F6D70696C6174696F6E52656C61786174696F6E7341747472696275746500417373656D626C7950726F6475637441747472696275746500417373656D626C79436F7079726967687441747472696275746500417373656D626C79436F6D70616E794174747269627574650052756E74696D65436F6D7061746962696C69747941747472696275746500537472696E670049734D61746368006765745F4C656E6774680047657446617374546F6B656E4C656E67746800746F6B656E4F7264696E616C0053716C436C6173734C6962726172792E646C6C0053797374656D0053797374656D2E5265666C656374696F6E00436861720064656C696D69746572004D6963726F736F66742E53716C5365727665722E536572766572005F654D61696C56616C696461746F72002E63746F72002E6363746F720053797374656D2E446961676E6F73746963730053797374656D2E52756E74696D652E496E7465726F7053657276696365730053797374656D2E52756E74696D652E436F6D70696C6572536572766963657300446562756767696E674D6F6465730053797374656D2E546578742E526567756C617245787072657373696F6E730055736572446566696E656446756E6374696F6E730052656765784F7074696F6E7300497356616C6964454D61696C4164647265737300656D61696C41646472657373004F626A6563740053706C6974006C6973740052656765780053716C436C6173734C6962726172790049734E756C6C4F72456D70747900000087135E002800280028005B0061002D007A005D007C005C0064007C005B00210023005C0024002500260027005C002A005C002B005C002D005C002F003D005C003F005C005E005F0060007B005C007C007D007E005D007C005B005C00750030003000410030002D005C00750044003700460046005C00750046003900300030002D005C00750046004400430046005C00750046004400460030002D005C00750046004600450046005D0029002B0028005C002E0028005B0061002D007A005D007C005C0064007C005B00210023005C0024002500260027005C002A005C002B005C002D005C002F003D005C003F005C005E005F0060007B005C007C007D007E005D007C005B005C00750030003000410030002D005C00750044003700460046005C00750046003900300030002D005C00750046004400430046005C00750046004400460030002D005C00750046004600450046005D0029002B0029002A0029007C00280028005C00780032003200290028002800280028005C007800320030007C005C0078003000390029002A0028005C007800300064005C00780030006100290029003F0028005C007800320030007C005C0078003000390029002B0029003F00280028005B005C007800300031002D005C007800300038005C007800300062005C007800300063005C007800300065002D005C007800310066005C007800370066005D007C005C007800320031007C005B005C007800320033002D005C007800350062005D007C005B005C007800350064002D005C007800370065005D007C005B005C00750030003000410030002D005C00750044003700460046005C00750046003900300030002D005C00750046004400430046005C00750046004400460030002D005C00750046004600450046005D0029007C0028005C005C0028005B005C007800300031002D005C007800300039005C007800300062005C007800300063005C007800300064002D005C007800370066005D007C005B005C00750030003000410030002D005C00750044003700460046005C00750046003900300030002D005C00750046004400430046005C00750046004400460030002D005C00750046004600450046005D0029002900290029002A002800280028005C007800320030007C005C0078003000390029002A0028005C007800300064005C00780030006100290029003F0028005C007800320030007C005C0078003000390029002B0029003F0028005C0078003200320029002900290040002800280028005B0061002D007A005D007C005C0064007C005B005C00750030003000410030002D005C00750044003700460046005C00750046003900300030002D005C00750046004400430046005C00750046004400460030002D005C00750046004600450046005D0029007C00280028005B0061002D007A005D007C005C0064007C005B005C00750030003000410030002D005C00750044003700460046005C00750046003900300030002D005C00750046004400430046005C00750046004400460030002D005C00750046004600450046005D00290028005B0061002D007A005D007C005C0064007C002D007C005C002E007C005F007C007E007C005B005C00750030003000410030002D005C00750044003700460046005C00750046003900300030002D005C00750046004400430046005C00750046004400460030002D005C00750046004600450046005D0029002A0028005B0061002D007A005D007C005C0064007C005B005C00750030003000410030002D005C00750044003700460046005C00750046003900300030002D005C00750046004400430046005C00750046004400460030002D005C00750046004600450046005D002900290029005C002E0029002B00280028005B0061002D007A005D007C005B005C00750030003000410030002D005C00750044003700460046005C00750046003900300030002D005C00750046004400430046005C00750046004400460030002D005C00750046004600450046005D0029007C00280028005B0061002D007A005D007C005B005C00750030003000410030002D005C00750044003700460046005C00750046003900300030002D005C00750046004400430046005C00750046004400460030002D005C00750046004600450046005D00290028005B0061002D007A005D007C005C0064007C002D007C005C002E007C005F007C007E007C005B005C00750030003000410030002D005C00750044003700460046005C00750046003900300030002D005C00750046004400430046005C00750046004400460030002D005C00750046004600450046005D0029002A0028005B0061002D007A005D007C005B005C00750030003000410030002D005C00750044003700460046005C00750046003900300030002D005C00750046004400430046005C00750046004400460030002D005C00750046004600450046005D002900290029005C002E003F0024000100009238276896C8294D99A1D294AF8329AC00042001010803200001052001011111042001010E04200101020407011D0E040001020E0620011D0E1D0303200008042001020E062002010E114D08B77A5C561934E08903061239060003080E0308030000010801000800000000001E01000100540216577261704E6F6E457863657074696F6E5468726F7773010801000200000000000E010009434C5253616D706C6500000501000000000E0100094D6963726F736F667400002001001B436F7079726967687420C2A9204D6963726F736F667420323031300000808F010001005455794D6963726F736F66742E53716C5365727665722E5365727665722E446174614163636573734B696E642C2053797374656D2E446174612C2056657273696F6E3D342E302E302E302C2043756C747572653D6E65757472616C2C205075626C69634B6579546F6B656E3D623737613563353631393334653038390A44617461416363657373000000000000282F00000000000000000000422F0000002000000000000000000000000000000000000000000000342F0000000000000000000000005F436F72446C6C4D61696E006D73636F7265652E646C6C0000000000FF2500200010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001001000000018000080000000000000000000000000000001000100000030000080000000000000000000000000000001000000000048000000584000007C03000000000000000000007C0334000000560053005F00560045005200530049004F004E005F0049004E0046004F0000000000BD04EFFE00000100000001008314CE1B000001008314CE1B3F000000000000000400000002000000000000000000000000000000440000000100560061007200460069006C00650049006E0066006F00000000002400040000005400720061006E0073006C006100740069006F006E00000000000000B004DC020000010053007400720069006E006700460069006C00650049006E0066006F000000B802000001003000300030003000300034006200300000001A000100010043006F006D006D0065006E007400730000000000000034000A00010043006F006D00700061006E0079004E0061006D006500000000004D006900630072006F0073006F006600740000003C000A000100460069006C0065004400650073006300720069007000740069006F006E000000000043004C005200530061006D0070006C00650000003C000E000100460069006C006500560065007200730069006F006E000000000031002E0030002E0037003100310038002E003500320035003100000048001400010049006E007400650072006E0061006C004E0061006D0065000000530071006C0043006C006100730073004C006900620072006100720079002E0064006C006C0000005A001B0001004C006500670061006C0043006F007000790072006900670068007400000043006F0070007900720069006700680074002000A90020004D006900630072006F0073006F006600740020003200300031003000000000002A00010001004C006500670061006C00540072006100640065006D00610072006B00730000000000000000005000140001004F0072006900670069006E0061006C00460069006C0065006E0061006D0065000000530071006C0043006C006100730073004C006900620072006100720079002E0064006C006C00000034000A000100500072006F0064007500630074004E0061006D0065000000000043004C005200530061006D0070006C006500000040000E000100500072006F006400750063007400560065007200730069006F006E00000031002E0030002E0037003100310038002E003500320035003100000044000E00010041007300730065006D0062006C0079002000560065007200730069006F006E00000031002E0030002E0037003100310038002E00350032003500310000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000C000000543F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
WITH PERMISSION_SET = SAFE

GO
