--[[
    as of commit df8ab0aa (Aug 4, 2021)
    functions out of help text
]]--

local rb = {}

--[[ GLOBALS ]]

rb.argv = argv --> array[str]

--[[ HOOKS ]]

rb.OnHttpRequest = function() return OnHttpRequest() end
rb.OnClientConnection = function(ip_int, port_int, serverip_int, serverport_int) return OnClientConnection(ip_int, port_int, serverip_int, serverport_int) end --> bool
rb.OnProcessDestroy = function(pid_int) return OnProcessDestroy(pid_int)  end
rb.OnServerStart = function() return OnServerStart() end
rb.OnServerStop = function() return OnServerStop() end
rb.OnWorkerStart = function() return OnWorkerStart() end
rb.OnWorkerStop = function() return OnWorkerStop() end

--[[ FUNCTIONS ]]

rb.Write = function(data_str) return Write(data_str) end
rb.SetStatus = function(code_int, reason_str) return SetStatus(code_int, reason_str) end
rb.SetHeader = function(name_str, value_str) return SetHeader(name_str, value_str) end
rb.GetParam = function(name_str) return GetParam(name_str) end --> value:str
rb.EscapeHtml = function(str) return EscapeHtml(str) end --> str
rb.LaunchBrowser = function(path_str) return LaunchBrowser(path_str) end
rb.CategorizeIp = function(ip_uint32) return CategorizeIp(ip_uint32) end --> str
rb.DecodeBase64 = function(ascii_str) return DecodeBase64(ascii_str) end --> binary:str
rb.DecodeLatin1 = function(iso_8859_1_str) return DecodeLatin1(iso_8859_1_str) end --> utf-8_str
rb.EncodeBase64 = function(binary_str) return EncodeBase64(binary_str) end --> ascii:str
rb.EncodeLatin1 = function(utf_8_str,  flags_int) return EncodeLatin1(utf_8_str, flags_int) end --> iso-8859-1:str
rb.EscapeFragment = function(str) return EscapeFragment(str) end --> str
rb.EscapeHost = function(str) return EscapeHost(str) end --> str
rb.EscapeLiteral = function(str) return EscapeLiteral(str) end --> str
rb.EscapeParam = function(str) return EscapeParam(str) end --> str
rb.EscapePass = function(str) return EscapePass(str) end --> str
rb.EscapePath = function(str) return EscapePath(str) end --> str
rb.EscapeSegment = function(str) return EscapeSegment(str) end --> str
rb.EscapeUser = function(str) return EscapeUser(str) end --> str
rb.Fetch = function(url_str, body_str, method_body_table) return Fetch(url_str, body_str, method_body_table) end--> status:int, {header:str=value:str, ...}, body:str
rb.FormatHttpDateTime = function(seconds_int) return FormatHttpDateTime(seconds_int) end --> rfc1123:str
rb.FormatIp = function(uint32) return FormatIp(uint32)  end --> str
rb.GetAssetMode = function(path_str) return GetAssetMode(path_str) end --> int
rb.GetAssetSize = function(path_str) return GetAssetSize(path_str) end --> int
rb.GetComment = function(path_str) return GetComment(path_str) end --> str
rb.GetRemoteAddr = function() return GetRemoteAddr() end --> ip:uint32, port:uint16
rb.GetClientAddr = function() return GetClientAddr() end --> ip:uint32, port:uint16
rb.GetServerAddr = function() return GetServerAddr() end --> ip:uint32, port:uint16
rb.GetDate = function() return GetDate() end --> seconds:int
rb.GetHeader = function(name_str) return GetHeader(name_str) end --> value:str
rb.GetHeaders = function() return GetHeaders() end --> {name:str=value:str, ...}
rb.GetLogLevel = function() return GetLogLevel() end --> int
rb.GetHost = function() return GetHost() end --> str
rb.GetMonospaceWidth = function(str_or_char) return GetMonospaceWidth(str_or_char) end --> int
rb.GetMethod = function() return GetMethod() end --> str
rb.GetParams = function() return GetParams() end --> {{name:str[, value:str]}, ...}
rb.GetPath = function() return GetPath() end --> str
rb.GetEffectivePath = function() return GetEffectivePath() end --> str
rb.GetScheme = function() return GetScheme() end --> str
rb.GetPayload = function() return GetPayload() end --> str
rb.GetUrl = function() return GetUrl() end --> str
rb.GetHttpVersion = function() return GetHttpVersion() end --> int
rb.GetRedbeanVersion = function() return GetRedbeanVersion() end --> int
rb.GetZipPaths = function() return GetZipPaths() end --> {path:str, ...}
rb.HasParam = function(name_str) return HasParam(name_str) end --> bool
rb.HidePath = function(prefix_str) return HidePath(prefix_str) end
rb.IsPublicIp = function(uint32) return IsPublicIp(uint32) end --> bool
rb.IsPrivateIp = function(uint32) return IsPrivateIp(uint32) end --> bool
rb.IsLoopbackIp = function(uint32) return IsLoopbackIp(uint32) end --> bool
rb.IsCompressed = function(path_str) return IsCompressed(path_str) end --> bool
rb.IndentLines = function(str, int) return IndentLines(str, int) end --> str
rb.LoadAsset = function(path_str) return LoadAsset(path_str) end --> str
rb.StoreAsset = function(path_str, data_str, mode_int) return StoreAsset(path_str, data_str, mode_int) end
rb.Log = function(level_int, message_str) return Log(level_int, message_str) end
rb.ParseHttpDateTime = function(rfc1123_str) return ParseHttpDateTime(rfc1123_str) end --> seconds:int
rb.ParseUrl = function(str) return ParseUrl(str) end --> URL
rb.EncodeUrl = function(URL) return EncodeUrl(URL) end --> str
rb.ParseIp = function(str) return ParseIp(str) end --> int
rb.ProgramBrand = function(str) return ProgramBrand(str) end
rb.ProgramCache = function(seconds_int) return ProgramCache(seconds_int) end
rb.ProgramPort = function(uint16) return ProgramPort(uint16) end
rb.ProgramRedirect = function(code_int, src_str, location_str) return ProgramRedirect(code_int, src_str, location_str) end
rb.ProgramCertificate = function(pem_str) return ProgramCertificate(pem_str) end
rb.ProgramPrivateKey = function(pem_str) return ProgramPrivateKey(pem_str) end
rb.ProgramSslTicketLifetime = function(seconds_int) return ProgramSslTicketLifetime(seconds_int) end
rb.EvadeDragnetSurveillance = function(bool) return EvadeDragnetSurveillance(bool) end
rb.IsDaemon = function() return IsDaemon() end --> bool
rb.ProgramUid = function(int) return ProgramUid(int) end
rb.ProgramGid = function(int) return ProgramGid(int) end
rb.ProgramDirectory = function(str) return ProgramDirectory(str) end
rb.ProgramLogMessages = function(bool) return ProgramLogMessages(bool) end
rb.ProgramLogBodies = function(bool) return ProgramLogBodies(bool) end
rb.ProgramLogPath = function(str) return ProgramLogPath(str) end
rb.ProgramPidPath = function(str) return ProgramPidPath(str) end
rb.Slurp = function(filename_str) return Slurp(filename_str) end --> str
rb.Sleep = function(seconds_number) return Sleep(seconds_number) end
rb.Route = function(host_str, path_str) return Route(host_str, path_str) end
rb.RouteHost = function(host_str, path_str) return RouteHost(host_str, path_str) end --> bool
rb.RoutePath = function(path_str) return RoutePath(path_str) end --> bool
rb.ServeAsset = function(path_str) return ServeAsset(path_str) end
rb.ServeError = function(code_int, reason_str) return ServeError(code_int, reason_str) end
rb.SetLogLevel = function(level_int) return SetLogLevel(level_int) end
rb.VisualizeControlCodes = function(str) return VisualizeControlCodes(str) end --> str
rb.Underlong = function(str) return Underlong(str) end --> str
rb.Crc32 = function(initial_int, data_str) return Crc32(initial_int, data_str) end --> int
rb.Crc32c = function(initial_int, data_str) return Crc32c(initial_int, data_str) end --> int
rb.Md5 = function(str) return Md5(str) end --> str
rb.Sha1 = function(str) return Sha1(str) end --> str
rb.Sha224 = function(str) return Sha224(str) end --> str
rb.Sha256 = function(str) return Sha256(str) end --> str
rb.Sha384 = function(str) return Sha384(str) end --> str
rb.Sha512 = function(str) return Sha512(str) end --> str
rb.Bsf = function(int) return Bsf(int) end --> int
rb.Bsr = function(int) return Bsr(int) end --> int
rb.Popcnt = function(int) return Popcnt(int) end --> int

--[[ RE MODULE ]]

rb.re = {}
rb.re.search = function(regex, text, flags) return re.search(regex, text,  flags) end --> [match[,group_1,...]]
rb.re.compile = function(regex, flags) return re.compile(regex, flags) end --> regex_t*
rb.re.BASIC   = re.BASIC  
rb.re.ICASE   = re.ICASE  
rb.re.NEWLINE = re.NEWLINE
rb.re.NOSUB   = re.NOSUB  
rb.re.NOTBOL  = re.NOTBOL 
rb.re.NOTEOL  = re.NOTEOL 

--[[ CONSTANTS ]]

rb.kLogDebug   = kLogDebug
rb.kLogVerbose = kLogVerbose
rb.kLogInfo    = kLogInfo
rb.kLogWarn    = kLogWarn
rb.kLogError   = kLogError
rb.kLogFatal   = kLogFatal

--[[ NOT IN help.txt ]]

rb.ServeListing = function() return ServeListing() end
rb.ServeStatusz = function() return ServeStatusz() end
rb.ServeIndex = function() return ServeIndex() end
  
rb.ProgramTimeout = function(...) return ProgramTimeout(...) end
rb.ProgramAddr = function(...) return ProgramAddr(...) end
  
rb.bsf = function(int) return bsf(int) end
rb.bsr = function(int) return bsr(int) end
rb.crc32 = function(initial_int, data_str) return crc32(initial_int, data_str) end
rb.crc32c = function(initial_int, data_str) return crc32c(initial_int, data_str) end
rb.popcnt = function(int) return popcnt(int) end
  
return rb
