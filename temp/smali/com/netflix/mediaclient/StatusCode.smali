.class public final enum Lcom/netflix/mediaclient/StatusCode;
.super Ljava/lang/Enum;
.source "StatusCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/StatusCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/StatusCode;

.field public static final enum ALREADY_IN_QUEUE:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum BLADERUNNER_FAILURE:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum BROWSE_AGENT_WRONG_STATE:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum BROWSE_CW_WRONG_STATE:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum BROWSE_IQ_WRONG_STATE:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum CONFIG_REFRESH_FAILED:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DELETED_PROFILE:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DL_ALL_CDN_URLS_FAILED:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DL_BLACKLISTED_DEVICE:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DL_BUSY_TRY_DELETE_AGAIN:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DL_CANT_CREATE_VIEWABLE_DIRECTORY:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DL_CANT_DELETE_DOWNLOADABLES:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DL_CANT_DELETE_PLAYABLE_DIRECTORY:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DL_CANT_PERSIST_MANIFEST:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DL_CANT_PERSIST_REGISTRY:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DL_ENCODES_ARE_NOT_AVAILABLE:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DL_ENCODES_DELETE_ON_REVOCATION:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DL_LIMIT_CANT_DOWNLOAD_TILL_DATE:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DL_LIMIT_TOO_MANY_DEVICES_PLAN_OPTION:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DL_LIMIT_TOO_MANY_DOWNLOADED_DELETE_SOME:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DL_MANIFEST_DATA_MISSING:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DL_MANIFEST_NOT_FOUND_IN_CACHE:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DL_MANIFEST_NO_TRACKS_TO_DOWNLOAD:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DL_NOT_ENOUGH_FREE_SPACE:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DL_OFFLINE_AGENT_NOT_READY:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DL_OFFLINE_PLAYABLE_NOT_FOUND:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DL_OFFLINE_STORAGE_NOT_AVAILABLE:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DL_PLAY_WINDOW_RENEW_FAILED:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DL_REGISTRY_CHECKSUM_FAILED:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DL_TITTLE_ALREADY_DOWNLOADED:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DL_TITTLE_ALREADY_REQUESTED_FOR_DOWNLOAD:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DL_TOTAL_LICENSE_PER_DEVICE_LIMIT:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DL_URL_DOWNLOAD_DISK_IO_ERROR:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DL_USER_NOT_LOGGED_IN:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DL_VIEWABLE_DIRECTORY_MISSING:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DL_WARNING_DL_N_TIMES_BEFORE_DATE:Lcom/netflix/mediaclient/StatusCode;

.field private static final DRM_ERROR_HIGH_VALUE:I

.field private static final DRM_ERROR_LOW_VALUE:I

.field public static final enum DRM_FAILURE_CDM:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DRM_FAILURE_CDM_EXCEPTION:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DRM_FAILURE_CDM_KEY_SET_EMPTY:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DRM_FAILURE_CDM_LICENSE_EMPTY:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DRM_FAILURE_CDM_NOT_PROVISIONED:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DRM_FAILURE_CDM_RESOURCE_BUSY:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DRM_FAILURE_CDM_SERVER_DENIED:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DRM_FAILURE_FORCE_CRYPTO_FALLBACK:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DRM_FAILURE_GOOGLE_CDM_PROVISIONG_DENIED:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DRM_FAILURE_GOOGLE_DECLINED_PROVISIONING:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DRM_FAILURE_MEDIADRM_DECRYPT:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DRM_FAILURE_MEDIADRM_ENCRYPT:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DRM_FAILURE_MEDIADRM_GET_KEY_REQUEST:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DRM_FAILURE_MEDIADRM_KEYS_RESTORE_FAILED:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DRM_FAILURE_MEDIADRM_PROVIDE_KEY_RESPONSE:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DRM_FAILURE_MEDIADRM_RESET:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DRM_FAILURE_MEDIADRM_SIGN:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DRM_FAILURE_MEDIADRM_VERIFY:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DRM_FAILURE_MEDIADRM_WIDEVINE_PLUGIN_BLOCKED:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum DRM_FAILURE_MEDIADRM_WIDEVINE_PLUGIN_CHANGED:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum FALKOR_RESPONSE_PARSE_ERROR:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum FATAL_CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum FATAL_ESN_BASED_CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum FORCED_TESTING_ERROR:Lcom/netflix/mediaclient/StatusCode;

.field private static final HTTP_ERROR_HIGH_VALUE:I

.field private static final HTTP_ERROR_LOW_VALUE:I

.field public static final enum HTTP_ERROR_UNKNOWN:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum HTTP_ERR_404:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum HTTP_ERR_MALFORMED_URL:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum HTTP_ERR_NOT_RESOLVED:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum HTTP_ERR_TIMEOUT:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum HTTP_SSL_DATE_TIME_ERROR:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum HTTP_SSL_ERROR:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum HTTP_SSL_NO_VALID_CERT:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum INIT_SERVICE_TIMEOUT:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum INSUFFICIENT_CONTENT:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum INTERNAL_ERROR:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum INT_ERR_ADVIS_VIDEO_ID_NULL:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum INT_ERR_BAD_COOKIES:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum INT_ERR_CB_NULL:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum INT_ERR_CMP:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum INT_ERR_CMP_RESP_NULL:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum INT_ERR_FALKOR_EXCEPTION:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum INT_ERR_MDX_INIT:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum INT_ERR_MNGR_NOT_READY:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum INT_ERR_REALM_DETAILS_NULL:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum INT_ERR_RESOURCE_URL_NULL:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum INT_ERR_SERVICE_DISCONNECTED:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum INVALID_COUNRTY:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum MANIFEST_CACHE_EXTRACT_ERROR:Lcom/netflix/mediaclient/StatusCode;

.field private static final MANIFEST_ERROR_HIGH:I

.field private static final MANIFEST_ERROR_LOW:I

.field public static final enum MANIFEST_PARSE_ERROR:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum MANIFEST_PREFETCH_PROCESSING_ERROR:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum MAP_ERROR:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum MISSING_ID_IN_CACHE:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum MSL_BLACKLISTED_DEVICE_FAILBACK:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum MSL_BLACKLISTED_DEVICE_FATAL:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum MSL_FAILED_TO_CREATE_CLIENT:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum MSL_FAILED_TO_UPDATE_USER_ID:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum MSL_GENERIC_EXCEPTION:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum MSL_GENERIC_NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum MSL_LAST_MSL_ERROR:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum MSL_LEGACY_CRYPTO:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum MSL_LEGACY_CRYPTO_BUT_USED_WIDEVINE_BEFORE:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum MSL_USERAUTH_ENTITY_MISMATCH:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum MSL_WV_DECRYPT_ERROR:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum MSL_WV_ENCRYPT_ERROR:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum MSL_WV_SIGN_ERROR:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum MSL_WV_VERIFY_ERROR:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NET_CONNECTION_EXCEPTION:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NET_CRONET_ADDRESS_UNREACHABLE:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NET_CRONET_CONNECTION_CLOSED:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NET_CRONET_CONNECTION_REFUSED:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NET_CRONET_CONNECTION_RESET:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NET_CRONET_CONNECTION_TIMED_OUT:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NET_CRONET_ERROR_OTHER:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NET_CRONET_HOSTNAME_NOT_RESOLVED:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NET_CRONET_INTERNET_DISCONNECTED:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NET_CRONET_NETWORK_CHANGED:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NET_CRONET_QUIC_PROTOCOL_FAILED:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NET_CRONET_TIMED_OUT:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NET_GENERAL_NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NET_LAST_NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NET_MALFORMED_URL_ERROR:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NET_NETWORK_IO_EXCEPTION:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NET_SOCKET_TIMEOUT_EXCEPTION:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NET_UNKNOWN_HOST_EXCEPTION:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NON_RECOMMENDED_APP_VERSION:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NON_SUPPORTED_LOCALE:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NOT_IMPLEMENTED:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NOT_IN_QUEUE:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NOT_VALID:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NO_CONNECTIVITY:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NRD_ERROR:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NRD_INVALID_SW_VERSION:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NRD_LOGIN_ACTIONID_1:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NRD_LOGIN_ACTIONID_10:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NRD_LOGIN_ACTIONID_11:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NRD_LOGIN_ACTIONID_12:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NRD_LOGIN_ACTIONID_2:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NRD_LOGIN_ACTIONID_3:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NRD_LOGIN_ACTIONID_4:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NRD_LOGIN_ACTIONID_5:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NRD_LOGIN_ACTIONID_6:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NRD_LOGIN_ACTIONID_7:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NRD_LOGIN_ACTIONID_8:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NRD_LOGIN_ACTIONID_9:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NRD_LOGIN_ONGOING:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NRD_REGISTRATION_EXISTS:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum NRD_REGISTRATION_INVALID_CREDENTIALS:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum OBSOLETE_APP_VERSION:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum OFFLINE_LICENSE_ERROR:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum OFFLINE_LICENSE_FETCH_NEW:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum OFFLINE_LICENSE_MAX_DEVICE_LIMIT:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum OFFLINE_LICENSE_NOT_TESTER:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum OK:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum PROFILE_NOT_FOUND:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum RESPONSE_PARSE_ERROR:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum SERVER_ERROR:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum SERVER_ERROR_MAP_CACHE_MISS:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum SET_FAILED:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum UNKNOWN:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum USER_NOT_AUTHORIZED:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum USER_SIGNIN_FAILURE:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum USER_SIGNIN_RETRY:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum VOIP_CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/StatusCode;

.field public static final enum WRONG_PATH:Lcom/netflix/mediaclient/StatusCode;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xb

    const/16 v7, 0xa

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->UNKNOWN:Lcom/netflix/mediaclient/StatusCode;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "INTERNAL_ERROR"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->INTERNAL_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NETWORK_ERROR"

    const/4 v2, -0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 20
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NRD_ERROR"

    const/4 v2, 0x3

    const/4 v3, -0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "OBSOLETE_APP_VERSION"

    const/4 v2, 0x4

    const/4 v3, -0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->OBSOLETE_APP_VERSION:Lcom/netflix/mediaclient/StatusCode;

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "SET_FAILED"

    const/4 v2, 0x5

    const/4 v3, -0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->SET_FAILED:Lcom/netflix/mediaclient/StatusCode;

    .line 23
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "CONFIG_REFRESH_FAILED"

    const/4 v2, 0x6

    const/4 v3, -0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->CONFIG_REFRESH_FAILED:Lcom/netflix/mediaclient/StatusCode;

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "FORCED_TESTING_ERROR"

    const/4 v2, 0x7

    const/4 v3, -0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->FORCED_TESTING_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "INIT_SERVICE_TIMEOUT"

    const/16 v2, 0x8

    const/16 v3, -0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->INIT_SERVICE_TIMEOUT:Lcom/netflix/mediaclient/StatusCode;

    .line 26
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NOT_IMPLEMENTED"

    const/16 v2, 0x9

    const/16 v3, -0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NOT_IMPLEMENTED:Lcom/netflix/mediaclient/StatusCode;

    .line 27
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NO_CONNECTIVITY"

    const/16 v2, -0xb

    invoke-direct {v0, v1, v7, v2}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NO_CONNECTIVITY:Lcom/netflix/mediaclient/StatusCode;

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "CONFIG_DOWNLOAD_FAILED"

    const/16 v2, -0xc

    invoke-direct {v0, v1, v8, v2}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/StatusCode;

    .line 29
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "FATAL_CONFIG_DOWNLOAD_FAILED"

    const/16 v2, 0xc

    const/16 v3, -0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->FATAL_CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/StatusCode;

    .line 30
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "VOIP_CONFIG_DOWNLOAD_FAILED"

    const/16 v2, 0xd

    const/16 v3, -0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->VOIP_CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/StatusCode;

    .line 31
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "FATAL_ESN_BASED_CONFIG_DOWNLOAD_FAILED"

    const/16 v2, 0xe

    const/16 v3, -0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->FATAL_ESN_BASED_CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/StatusCode;

    .line 34
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NRD_INVALID_SW_VERSION"

    const/16 v2, 0xf

    const/16 v3, -0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_INVALID_SW_VERSION:Lcom/netflix/mediaclient/StatusCode;

    .line 37
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NRD_LOGIN_ONGOING"

    const/16 v2, 0x10

    const/16 v3, -0x28

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ONGOING:Lcom/netflix/mediaclient/StatusCode;

    .line 38
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NRD_REGISTRATION_EXISTS"

    const/16 v2, 0x11

    const/16 v3, -0x29

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_REGISTRATION_EXISTS:Lcom/netflix/mediaclient/StatusCode;

    .line 39
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NRD_REGISTRATION_INVALID_CREDENTIALS"

    const/16 v2, 0x12

    const/16 v3, -0x2a

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_REGISTRATION_INVALID_CREDENTIALS:Lcom/netflix/mediaclient/StatusCode;

    .line 48
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "USER_SIGNIN_FAILURE"

    const/16 v2, 0x13

    const/16 v3, -0x39

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->USER_SIGNIN_FAILURE:Lcom/netflix/mediaclient/StatusCode;

    .line 49
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "USER_SIGNIN_RETRY"

    const/16 v2, 0x14

    const/16 v3, -0x3a

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->USER_SIGNIN_RETRY:Lcom/netflix/mediaclient/StatusCode;

    .line 52
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "WRONG_PATH"

    const/16 v2, 0x15

    const/16 v3, -0x3c

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->WRONG_PATH:Lcom/netflix/mediaclient/StatusCode;

    .line 53
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "USER_NOT_AUTHORIZED"

    const/16 v2, 0x16

    const/16 v3, -0x3d

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->USER_NOT_AUTHORIZED:Lcom/netflix/mediaclient/StatusCode;

    .line 54
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "SERVER_ERROR"

    const/16 v2, 0x17

    const/16 v3, -0x3e

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->SERVER_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 55
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "MISSING_ID_IN_CACHE"

    const/16 v2, 0x18

    const/16 v3, -0x3f

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->MISSING_ID_IN_CACHE:Lcom/netflix/mediaclient/StatusCode;

    .line 56
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "SERVER_ERROR_MAP_CACHE_MISS"

    const/16 v2, 0x19

    const/16 v3, -0x40

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->SERVER_ERROR_MAP_CACHE_MISS:Lcom/netflix/mediaclient/StatusCode;

    .line 57
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "MAP_ERROR"

    const/16 v2, 0x1a

    const/16 v3, -0x41

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->MAP_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 58
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "BROWSE_AGENT_WRONG_STATE"

    const/16 v2, 0x1b

    const/16 v3, -0x42

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->BROWSE_AGENT_WRONG_STATE:Lcom/netflix/mediaclient/StatusCode;

    .line 59
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "BROWSE_IQ_WRONG_STATE"

    const/16 v2, 0x1c

    const/16 v3, -0x43

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->BROWSE_IQ_WRONG_STATE:Lcom/netflix/mediaclient/StatusCode;

    .line 60
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "BROWSE_CW_WRONG_STATE"

    const/16 v2, 0x1d

    const/16 v3, -0x44

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->BROWSE_CW_WRONG_STATE:Lcom/netflix/mediaclient/StatusCode;

    .line 61
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DELETED_PROFILE"

    const/16 v2, 0x1e

    const/16 v3, -0x45

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DELETED_PROFILE:Lcom/netflix/mediaclient/StatusCode;

    .line 62
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "INVALID_COUNRTY"

    const/16 v2, 0x1f

    const/16 v3, -0x46

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->INVALID_COUNRTY:Lcom/netflix/mediaclient/StatusCode;

    .line 63
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "INSUFFICIENT_CONTENT"

    const/16 v2, 0x20

    const/16 v3, -0x47

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->INSUFFICIENT_CONTENT:Lcom/netflix/mediaclient/StatusCode;

    .line 64
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "PROFILE_NOT_FOUND"

    const/16 v2, 0x21

    const/16 v3, -0x48

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->PROFILE_NOT_FOUND:Lcom/netflix/mediaclient/StatusCode;

    .line 67
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "FALKOR_RESPONSE_PARSE_ERROR"

    const/16 v2, 0x22

    const/16 v3, -0x50

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->FALKOR_RESPONSE_PARSE_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 70
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DRM_FAILURE_CDM"

    const/16 v2, 0x23

    const/16 v3, -0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_CDM:Lcom/netflix/mediaclient/StatusCode;

    .line 71
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DRM_FAILURE_GOOGLE_CDM_PROVISIONG_DENIED"

    const/16 v2, 0x24

    const/16 v3, -0x65

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_GOOGLE_CDM_PROVISIONG_DENIED:Lcom/netflix/mediaclient/StatusCode;

    .line 72
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DRM_FAILURE_CDM_KEY_SET_EMPTY"

    const/16 v2, 0x25

    const/16 v3, -0x66

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_CDM_KEY_SET_EMPTY:Lcom/netflix/mediaclient/StatusCode;

    .line 73
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DRM_FAILURE_CDM_RESOURCE_BUSY"

    const/16 v2, 0x26

    const/16 v3, -0x67

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_CDM_RESOURCE_BUSY:Lcom/netflix/mediaclient/StatusCode;

    .line 74
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DRM_FAILURE_CDM_LICENSE_EMPTY"

    const/16 v2, 0x27

    const/16 v3, -0x68

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_CDM_LICENSE_EMPTY:Lcom/netflix/mediaclient/StatusCode;

    .line 75
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DRM_FAILURE_FORCE_CRYPTO_FALLBACK"

    const/16 v2, 0x28

    const/16 v3, -0x69

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_FORCE_CRYPTO_FALLBACK:Lcom/netflix/mediaclient/StatusCode;

    .line 76
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DRM_FAILURE_CDM_NOT_PROVISIONED"

    const/16 v2, 0x29

    const/16 v3, -0x6a

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_CDM_NOT_PROVISIONED:Lcom/netflix/mediaclient/StatusCode;

    .line 77
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DRM_FAILURE_CDM_SERVER_DENIED"

    const/16 v2, 0x2a

    const/16 v3, -0x6b

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_CDM_SERVER_DENIED:Lcom/netflix/mediaclient/StatusCode;

    .line 78
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DRM_FAILURE_CDM_EXCEPTION"

    const/16 v2, 0x2b

    const/16 v3, -0x6c

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_CDM_EXCEPTION:Lcom/netflix/mediaclient/StatusCode;

    .line 80
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DRM_FAILURE_MEDIADRM_WIDEVINE_PLUGIN_BLOCKED"

    const/16 v2, 0x2c

    const/16 v3, -0x6d

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_WIDEVINE_PLUGIN_BLOCKED:Lcom/netflix/mediaclient/StatusCode;

    .line 81
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DRM_FAILURE_MEDIADRM_WIDEVINE_PLUGIN_CHANGED"

    const/16 v2, 0x2d

    const/16 v3, -0x6e

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_WIDEVINE_PLUGIN_CHANGED:Lcom/netflix/mediaclient/StatusCode;

    .line 82
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DRM_FAILURE_MEDIADRM_SIGN"

    const/16 v2, 0x2e

    const/16 v3, -0x6f

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_SIGN:Lcom/netflix/mediaclient/StatusCode;

    .line 83
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DRM_FAILURE_MEDIADRM_VERIFY"

    const/16 v2, 0x2f

    const/16 v3, -0x70

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_VERIFY:Lcom/netflix/mediaclient/StatusCode;

    .line 84
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DRM_FAILURE_MEDIADRM_DECRYPT"

    const/16 v2, 0x30

    const/16 v3, -0x71

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_DECRYPT:Lcom/netflix/mediaclient/StatusCode;

    .line 85
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DRM_FAILURE_MEDIADRM_ENCRYPT"

    const/16 v2, 0x31

    const/16 v3, -0x72

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_ENCRYPT:Lcom/netflix/mediaclient/StatusCode;

    .line 86
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DRM_FAILURE_MEDIADRM_GET_KEY_REQUEST"

    const/16 v2, 0x32

    const/16 v3, -0x73

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_GET_KEY_REQUEST:Lcom/netflix/mediaclient/StatusCode;

    .line 87
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DRM_FAILURE_MEDIADRM_PROVIDE_KEY_RESPONSE"

    const/16 v2, 0x33

    const/16 v3, -0x74

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_PROVIDE_KEY_RESPONSE:Lcom/netflix/mediaclient/StatusCode;

    .line 89
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DRM_FAILURE_MEDIADRM_KEYS_RESTORE_FAILED"

    const/16 v2, 0x34

    const/16 v3, -0x75

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_KEYS_RESTORE_FAILED:Lcom/netflix/mediaclient/StatusCode;

    .line 90
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DRM_FAILURE_MEDIADRM_RESET"

    const/16 v2, 0x35

    const/16 v3, -0x76

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_RESET:Lcom/netflix/mediaclient/StatusCode;

    .line 91
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DRM_FAILURE_GOOGLE_DECLINED_PROVISIONING"

    const/16 v2, 0x36

    const/16 v3, -0x77

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_GOOGLE_DECLINED_PROVISIONING:Lcom/netflix/mediaclient/StatusCode;

    .line 99
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "HTTP_SSL_ERROR"

    const/16 v2, 0x37

    const/16 v3, -0x78

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->HTTP_SSL_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 100
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "HTTP_SSL_DATE_TIME_ERROR"

    const/16 v2, 0x38

    const/16 v3, -0x79

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->HTTP_SSL_DATE_TIME_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 101
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "HTTP_SSL_NO_VALID_CERT"

    const/16 v2, 0x39

    const/16 v3, -0x7a

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->HTTP_SSL_NO_VALID_CERT:Lcom/netflix/mediaclient/StatusCode;

    .line 102
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "HTTP_ERR_404"

    const/16 v2, 0x3a

    const/16 v3, -0x7b

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->HTTP_ERR_404:Lcom/netflix/mediaclient/StatusCode;

    .line 103
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "HTTP_ERR_TIMEOUT"

    const/16 v2, 0x3b

    const/16 v3, -0x7c

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->HTTP_ERR_TIMEOUT:Lcom/netflix/mediaclient/StatusCode;

    .line 104
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "HTTP_ERR_MALFORMED_URL"

    const/16 v2, 0x3c

    const/16 v3, -0x7d

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->HTTP_ERR_MALFORMED_URL:Lcom/netflix/mediaclient/StatusCode;

    .line 105
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "HTTP_ERR_NOT_RESOLVED"

    const/16 v2, 0x3d

    const/16 v3, -0x7e

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->HTTP_ERR_NOT_RESOLVED:Lcom/netflix/mediaclient/StatusCode;

    .line 106
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "HTTP_ERROR_UNKNOWN"

    const/16 v2, 0x3e

    const/16 v3, -0x7f

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->HTTP_ERROR_UNKNOWN:Lcom/netflix/mediaclient/StatusCode;

    .line 115
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DL_URL_DOWNLOAD_DISK_IO_ERROR"

    const/16 v2, 0x3f

    const/16 v3, -0x82

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_URL_DOWNLOAD_DISK_IO_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 116
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DL_TITTLE_ALREADY_DOWNLOADED"

    const/16 v2, 0x40

    const/16 v3, -0x83

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_TITTLE_ALREADY_DOWNLOADED:Lcom/netflix/mediaclient/StatusCode;

    .line 117
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DL_REGISTRY_CHECKSUM_FAILED"

    const/16 v2, 0x41

    const/16 v3, -0x84

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_REGISTRY_CHECKSUM_FAILED:Lcom/netflix/mediaclient/StatusCode;

    .line 118
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DL_ALL_CDN_URLS_FAILED"

    const/16 v2, 0x42

    const/16 v3, -0x85

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_ALL_CDN_URLS_FAILED:Lcom/netflix/mediaclient/StatusCode;

    .line 119
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DL_OFFLINE_STORAGE_NOT_AVAILABLE"

    const/16 v2, 0x43

    const/16 v3, -0x86

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_OFFLINE_STORAGE_NOT_AVAILABLE:Lcom/netflix/mediaclient/StatusCode;

    .line 120
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DL_CANT_CREATE_VIEWABLE_DIRECTORY"

    const/16 v2, 0x44

    const/16 v3, -0x87

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_CANT_CREATE_VIEWABLE_DIRECTORY:Lcom/netflix/mediaclient/StatusCode;

    .line 121
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DL_CANT_PERSIST_MANIFEST"

    const/16 v2, 0x45

    const/16 v3, -0x88

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_CANT_PERSIST_MANIFEST:Lcom/netflix/mediaclient/StatusCode;

    .line 122
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DL_MANIFEST_NO_TRACKS_TO_DOWNLOAD"

    const/16 v2, 0x46

    const/16 v3, -0x89

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_MANIFEST_NO_TRACKS_TO_DOWNLOAD:Lcom/netflix/mediaclient/StatusCode;

    .line 123
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DL_CANT_DELETE_DOWNLOADABLES"

    const/16 v2, 0x47

    const/16 v3, -0x8a

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_CANT_DELETE_DOWNLOADABLES:Lcom/netflix/mediaclient/StatusCode;

    .line 124
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DL_CANT_DELETE_PLAYABLE_DIRECTORY"

    const/16 v2, 0x48

    const/16 v3, -0x8b

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_CANT_DELETE_PLAYABLE_DIRECTORY:Lcom/netflix/mediaclient/StatusCode;

    .line 125
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DL_NOT_ENOUGH_FREE_SPACE"

    const/16 v2, 0x49

    const/16 v3, -0x8c

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_NOT_ENOUGH_FREE_SPACE:Lcom/netflix/mediaclient/StatusCode;

    .line 126
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DL_MANIFEST_NOT_FOUND_IN_CACHE"

    const/16 v2, 0x4a

    const/16 v3, -0x8d

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_MANIFEST_NOT_FOUND_IN_CACHE:Lcom/netflix/mediaclient/StatusCode;

    .line 127
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DL_CANT_PERSIST_REGISTRY"

    const/16 v2, 0x4b

    const/16 v3, -0x8e

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_CANT_PERSIST_REGISTRY:Lcom/netflix/mediaclient/StatusCode;

    .line 128
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DL_TITTLE_ALREADY_REQUESTED_FOR_DOWNLOAD"

    const/16 v2, 0x4c

    const/16 v3, -0x8f

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_TITTLE_ALREADY_REQUESTED_FOR_DOWNLOAD:Lcom/netflix/mediaclient/StatusCode;

    .line 129
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DL_OFFLINE_AGENT_NOT_READY"

    const/16 v2, 0x4d

    const/16 v3, -0x90

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_OFFLINE_AGENT_NOT_READY:Lcom/netflix/mediaclient/StatusCode;

    .line 130
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DL_OFFLINE_PLAYABLE_NOT_FOUND"

    const/16 v2, 0x4e

    const/16 v3, -0x91

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_OFFLINE_PLAYABLE_NOT_FOUND:Lcom/netflix/mediaclient/StatusCode;

    .line 131
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DL_USER_NOT_LOGGED_IN"

    const/16 v2, 0x4f

    const/16 v3, -0x93

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_USER_NOT_LOGGED_IN:Lcom/netflix/mediaclient/StatusCode;

    .line 132
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DL_ENCODES_ARE_NOT_AVAILABLE"

    const/16 v2, 0x50

    const/16 v3, -0x94

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_ENCODES_ARE_NOT_AVAILABLE:Lcom/netflix/mediaclient/StatusCode;

    .line 133
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DL_MANIFEST_DATA_MISSING"

    const/16 v2, 0x51

    const/16 v3, -0x95

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_MANIFEST_DATA_MISSING:Lcom/netflix/mediaclient/StatusCode;

    .line 134
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DL_BUSY_TRY_DELETE_AGAIN"

    const/16 v2, 0x52

    const/16 v3, -0x96

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_BUSY_TRY_DELETE_AGAIN:Lcom/netflix/mediaclient/StatusCode;

    .line 135
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DL_PLAY_WINDOW_RENEW_FAILED"

    const/16 v2, 0x53

    const/16 v3, -0x97

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_PLAY_WINDOW_RENEW_FAILED:Lcom/netflix/mediaclient/StatusCode;

    .line 137
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DL_LIMIT_CANT_DOWNLOAD_TILL_DATE"

    const/16 v2, 0x54

    const/16 v3, -0x98

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_LIMIT_CANT_DOWNLOAD_TILL_DATE:Lcom/netflix/mediaclient/StatusCode;

    .line 138
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DL_LIMIT_TOO_MANY_DOWNLOADED_DELETE_SOME"

    const/16 v2, 0x55

    const/16 v3, -0x99

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_LIMIT_TOO_MANY_DOWNLOADED_DELETE_SOME:Lcom/netflix/mediaclient/StatusCode;

    .line 139
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DL_LIMIT_TOO_MANY_DEVICES_PLAN_OPTION"

    const/16 v2, 0x56

    const/16 v3, -0x9a

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_LIMIT_TOO_MANY_DEVICES_PLAN_OPTION:Lcom/netflix/mediaclient/StatusCode;

    .line 140
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DL_ENCODES_DELETE_ON_REVOCATION"

    const/16 v2, 0x57

    const/16 v3, -0x9b

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_ENCODES_DELETE_ON_REVOCATION:Lcom/netflix/mediaclient/StatusCode;

    .line 141
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DL_TOTAL_LICENSE_PER_DEVICE_LIMIT"

    const/16 v2, 0x58

    const/16 v3, -0x9c

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_TOTAL_LICENSE_PER_DEVICE_LIMIT:Lcom/netflix/mediaclient/StatusCode;

    .line 142
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DL_VIEWABLE_DIRECTORY_MISSING"

    const/16 v2, 0x59

    const/16 v3, -0x9d

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_VIEWABLE_DIRECTORY_MISSING:Lcom/netflix/mediaclient/StatusCode;

    .line 143
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DL_BLACKLISTED_DEVICE"

    const/16 v2, 0x5a

    const/16 v3, -0x9e

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_BLACKLISTED_DEVICE:Lcom/netflix/mediaclient/StatusCode;

    .line 147
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NRD_LOGIN_ACTIONID_1"

    const/16 v2, 0x5b

    const/16 v3, -0xc8

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_1:Lcom/netflix/mediaclient/StatusCode;

    .line 148
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NRD_LOGIN_ACTIONID_2"

    const/16 v2, 0x5c

    const/16 v3, -0xc9

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_2:Lcom/netflix/mediaclient/StatusCode;

    .line 149
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NRD_LOGIN_ACTIONID_3"

    const/16 v2, 0x5d

    const/16 v3, -0xca

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_3:Lcom/netflix/mediaclient/StatusCode;

    .line 150
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NRD_LOGIN_ACTIONID_4"

    const/16 v2, 0x5e

    const/16 v3, -0xcb

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_4:Lcom/netflix/mediaclient/StatusCode;

    .line 151
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NRD_LOGIN_ACTIONID_5"

    const/16 v2, 0x5f

    const/16 v3, -0xcc

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_5:Lcom/netflix/mediaclient/StatusCode;

    .line 152
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NRD_LOGIN_ACTIONID_6"

    const/16 v2, 0x60

    const/16 v3, -0xcd

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_6:Lcom/netflix/mediaclient/StatusCode;

    .line 153
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NRD_LOGIN_ACTIONID_7"

    const/16 v2, 0x61

    const/16 v3, -0xce

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_7:Lcom/netflix/mediaclient/StatusCode;

    .line 154
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NRD_LOGIN_ACTIONID_8"

    const/16 v2, 0x62

    const/16 v3, -0xcf

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_8:Lcom/netflix/mediaclient/StatusCode;

    .line 155
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NRD_LOGIN_ACTIONID_9"

    const/16 v2, 0x63

    const/16 v3, -0xd0

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_9:Lcom/netflix/mediaclient/StatusCode;

    .line 156
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NRD_LOGIN_ACTIONID_10"

    const/16 v2, 0x64

    const/16 v3, -0xd1

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_10:Lcom/netflix/mediaclient/StatusCode;

    .line 157
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NRD_LOGIN_ACTIONID_11"

    const/16 v2, 0x65

    const/16 v3, -0xd2

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_11:Lcom/netflix/mediaclient/StatusCode;

    .line 158
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NRD_LOGIN_ACTIONID_12"

    const/16 v2, 0x66

    const/16 v3, -0xd3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_12:Lcom/netflix/mediaclient/StatusCode;

    .line 161
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "RESPONSE_PARSE_ERROR"

    const/16 v2, 0x67

    const/16 v3, -0x12c

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->RESPONSE_PARSE_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 162
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "BLADERUNNER_FAILURE"

    const/16 v2, 0x68

    const/16 v3, -0x140

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->BLADERUNNER_FAILURE:Lcom/netflix/mediaclient/StatusCode;

    .line 163
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "OFFLINE_LICENSE_MAX_DEVICE_LIMIT"

    const/16 v2, 0x69

    const/16 v3, -0x141

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->OFFLINE_LICENSE_MAX_DEVICE_LIMIT:Lcom/netflix/mediaclient/StatusCode;

    .line 164
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "OFFLINE_LICENSE_NOT_TESTER"

    const/16 v2, 0x6a

    const/16 v3, -0x142

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->OFFLINE_LICENSE_NOT_TESTER:Lcom/netflix/mediaclient/StatusCode;

    .line 165
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "OFFLINE_LICENSE_ERROR"

    const/16 v2, 0x6b

    const/16 v3, -0x143

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->OFFLINE_LICENSE_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 166
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "OFFLINE_LICENSE_FETCH_NEW"

    const/16 v2, 0x6c

    const/16 v3, -0x144

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->OFFLINE_LICENSE_FETCH_NEW:Lcom/netflix/mediaclient/StatusCode;

    .line 170
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "INT_ERR_ADVIS_VIDEO_ID_NULL"

    const/16 v2, 0x6d

    const/16 v3, -0x168

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->INT_ERR_ADVIS_VIDEO_ID_NULL:Lcom/netflix/mediaclient/StatusCode;

    .line 171
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "INT_ERR_CMP"

    const/16 v2, 0x6e

    const/16 v3, -0x169

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->INT_ERR_CMP:Lcom/netflix/mediaclient/StatusCode;

    .line 172
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "INT_ERR_CMP_RESP_NULL"

    const/16 v2, 0x6f

    const/16 v3, -0x16a

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->INT_ERR_CMP_RESP_NULL:Lcom/netflix/mediaclient/StatusCode;

    .line 173
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "INT_ERR_MDX_INIT"

    const/16 v2, 0x70

    const/16 v3, -0x16b

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->INT_ERR_MDX_INIT:Lcom/netflix/mediaclient/StatusCode;

    .line 174
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "INT_ERR_RESOURCE_URL_NULL"

    const/16 v2, 0x71

    const/16 v3, -0x16c

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->INT_ERR_RESOURCE_URL_NULL:Lcom/netflix/mediaclient/StatusCode;

    .line 175
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "INT_ERR_CB_NULL"

    const/16 v2, 0x72

    const/16 v3, -0x16d

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->INT_ERR_CB_NULL:Lcom/netflix/mediaclient/StatusCode;

    .line 176
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "INT_ERR_REALM_DETAILS_NULL"

    const/16 v2, 0x73

    const/16 v3, -0x16e

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->INT_ERR_REALM_DETAILS_NULL:Lcom/netflix/mediaclient/StatusCode;

    .line 177
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "INT_ERR_MNGR_NOT_READY"

    const/16 v2, 0x74

    const/16 v3, -0x16f

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->INT_ERR_MNGR_NOT_READY:Lcom/netflix/mediaclient/StatusCode;

    .line 178
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "INT_ERR_SERVICE_DISCONNECTED"

    const/16 v2, 0x75

    const/16 v3, -0x170

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->INT_ERR_SERVICE_DISCONNECTED:Lcom/netflix/mediaclient/StatusCode;

    .line 179
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "INT_ERR_BAD_COOKIES"

    const/16 v2, 0x76

    const/16 v3, -0x171

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->INT_ERR_BAD_COOKIES:Lcom/netflix/mediaclient/StatusCode;

    .line 180
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "INT_ERR_FALKOR_EXCEPTION"

    const/16 v2, 0x77

    const/16 v3, -0x172

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->INT_ERR_FALKOR_EXCEPTION:Lcom/netflix/mediaclient/StatusCode;

    .line 184
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NET_GENERAL_NETWORK_ERROR"

    const/16 v2, 0x78

    const/16 v3, -0x190

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NET_GENERAL_NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 185
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NET_UNKNOWN_HOST_EXCEPTION"

    const/16 v2, 0x79

    const/16 v3, -0x191

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NET_UNKNOWN_HOST_EXCEPTION:Lcom/netflix/mediaclient/StatusCode;

    .line 186
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NET_CONNECTION_EXCEPTION"

    const/16 v2, 0x7a

    const/16 v3, -0x192

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NET_CONNECTION_EXCEPTION:Lcom/netflix/mediaclient/StatusCode;

    .line 187
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NET_SOCKET_TIMEOUT_EXCEPTION"

    const/16 v2, 0x7b

    const/16 v3, -0x193

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NET_SOCKET_TIMEOUT_EXCEPTION:Lcom/netflix/mediaclient/StatusCode;

    .line 188
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NET_MALFORMED_URL_ERROR"

    const/16 v2, 0x7c

    const/16 v3, -0x194

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NET_MALFORMED_URL_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 189
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NET_NETWORK_IO_EXCEPTION"

    const/16 v2, 0x7d

    const/16 v3, -0x195

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NET_NETWORK_IO_EXCEPTION:Lcom/netflix/mediaclient/StatusCode;

    .line 192
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NET_CRONET_HOSTNAME_NOT_RESOLVED"

    const/16 v2, 0x7e

    const/16 v3, -0x1a4

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NET_CRONET_HOSTNAME_NOT_RESOLVED:Lcom/netflix/mediaclient/StatusCode;

    .line 193
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NET_CRONET_INTERNET_DISCONNECTED"

    const/16 v2, 0x7f

    const/16 v3, -0x1a5

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NET_CRONET_INTERNET_DISCONNECTED:Lcom/netflix/mediaclient/StatusCode;

    .line 194
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NET_CRONET_NETWORK_CHANGED"

    const/16 v2, 0x80

    const/16 v3, -0x1a6

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NET_CRONET_NETWORK_CHANGED:Lcom/netflix/mediaclient/StatusCode;

    .line 195
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NET_CRONET_TIMED_OUT"

    const/16 v2, 0x81

    const/16 v3, -0x1a7

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NET_CRONET_TIMED_OUT:Lcom/netflix/mediaclient/StatusCode;

    .line 196
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NET_CRONET_CONNECTION_CLOSED"

    const/16 v2, 0x82

    const/16 v3, -0x1a8

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NET_CRONET_CONNECTION_CLOSED:Lcom/netflix/mediaclient/StatusCode;

    .line 197
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NET_CRONET_CONNECTION_TIMED_OUT"

    const/16 v2, 0x83

    const/16 v3, -0x1a9

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NET_CRONET_CONNECTION_TIMED_OUT:Lcom/netflix/mediaclient/StatusCode;

    .line 198
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NET_CRONET_CONNECTION_REFUSED"

    const/16 v2, 0x84

    const/16 v3, -0x1aa

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NET_CRONET_CONNECTION_REFUSED:Lcom/netflix/mediaclient/StatusCode;

    .line 199
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NET_CRONET_CONNECTION_RESET"

    const/16 v2, 0x85

    const/16 v3, -0x1ab

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NET_CRONET_CONNECTION_RESET:Lcom/netflix/mediaclient/StatusCode;

    .line 200
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NET_CRONET_ADDRESS_UNREACHABLE"

    const/16 v2, 0x86

    const/16 v3, -0x1ac

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NET_CRONET_ADDRESS_UNREACHABLE:Lcom/netflix/mediaclient/StatusCode;

    .line 201
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NET_CRONET_QUIC_PROTOCOL_FAILED"

    const/16 v2, 0x87

    const/16 v3, -0x1ad

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NET_CRONET_QUIC_PROTOCOL_FAILED:Lcom/netflix/mediaclient/StatusCode;

    .line 202
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NET_CRONET_ERROR_OTHER"

    const/16 v2, 0x88

    const/16 v3, -0x1ae

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NET_CRONET_ERROR_OTHER:Lcom/netflix/mediaclient/StatusCode;

    .line 205
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NET_LAST_NETWORK_ERROR"

    const/16 v2, 0x89

    const/16 v3, -0x1f3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NET_LAST_NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 208
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "MSL_FAILED_TO_CREATE_CLIENT"

    const/16 v2, 0x8a

    const/16 v3, -0x3e9

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->MSL_FAILED_TO_CREATE_CLIENT:Lcom/netflix/mediaclient/StatusCode;

    .line 209
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "MSL_FAILED_TO_UPDATE_USER_ID"

    const/16 v2, 0x8b

    const/16 v3, -0x3ea

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->MSL_FAILED_TO_UPDATE_USER_ID:Lcom/netflix/mediaclient/StatusCode;

    .line 210
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "MSL_LEGACY_CRYPTO"

    const/16 v2, 0x8c

    const/16 v3, -0x3eb

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->MSL_LEGACY_CRYPTO:Lcom/netflix/mediaclient/StatusCode;

    .line 211
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "MSL_BLACKLISTED_DEVICE_FAILBACK"

    const/16 v2, 0x8d

    const/16 v3, -0x3ec

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->MSL_BLACKLISTED_DEVICE_FAILBACK:Lcom/netflix/mediaclient/StatusCode;

    .line 212
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "MSL_BLACKLISTED_DEVICE_FATAL"

    const/16 v2, 0x8e

    const/16 v3, -0x3ed

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->MSL_BLACKLISTED_DEVICE_FATAL:Lcom/netflix/mediaclient/StatusCode;

    .line 213
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "MSL_LEGACY_CRYPTO_BUT_USED_WIDEVINE_BEFORE"

    const/16 v2, 0x8f

    const/16 v3, -0x3ee

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->MSL_LEGACY_CRYPTO_BUT_USED_WIDEVINE_BEFORE:Lcom/netflix/mediaclient/StatusCode;

    .line 214
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "MSL_GENERIC_NETWORK_ERROR"

    const/16 v2, 0x90

    const/16 v3, -0x3ef

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->MSL_GENERIC_NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 215
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "MSL_USERAUTH_ENTITY_MISMATCH"

    const/16 v2, 0x91

    const/16 v3, -0x3f0

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->MSL_USERAUTH_ENTITY_MISMATCH:Lcom/netflix/mediaclient/StatusCode;

    .line 216
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "MSL_GENERIC_EXCEPTION"

    const/16 v2, 0x92

    const/16 v3, -0x3f1

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->MSL_GENERIC_EXCEPTION:Lcom/netflix/mediaclient/StatusCode;

    .line 217
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "MSL_WV_DECRYPT_ERROR"

    const/16 v2, 0x93

    const/16 v3, -0x3f2

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->MSL_WV_DECRYPT_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 218
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "MSL_WV_ENCRYPT_ERROR"

    const/16 v2, 0x94

    const/16 v3, -0x3f3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->MSL_WV_ENCRYPT_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 219
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "MSL_WV_VERIFY_ERROR"

    const/16 v2, 0x95

    const/16 v3, -0x3f4

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->MSL_WV_VERIFY_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 220
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "MSL_WV_SIGN_ERROR"

    const/16 v2, 0x96

    const/16 v3, -0x3f5

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->MSL_WV_SIGN_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 223
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "MSL_LAST_MSL_ERROR"

    const/16 v2, 0x97

    const/16 v3, -0x44c

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->MSL_LAST_MSL_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 225
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "MANIFEST_PARSE_ERROR"

    const/16 v2, 0x98

    const/16 v3, -0x7d1

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->MANIFEST_PARSE_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 226
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "MANIFEST_PREFETCH_PROCESSING_ERROR"

    const/16 v2, 0x99

    const/16 v3, -0x898

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->MANIFEST_PREFETCH_PROCESSING_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 227
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "MANIFEST_CACHE_EXTRACT_ERROR"

    const/16 v2, 0x9a

    const/16 v3, -0x8fc

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->MANIFEST_CACHE_EXTRACT_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 235
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "OK"

    const/16 v2, 0x9b

    invoke-direct {v0, v1, v2, v4}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    .line 238
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NON_RECOMMENDED_APP_VERSION"

    const/16 v2, 0x9c

    invoke-direct {v0, v1, v2, v5}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NON_RECOMMENDED_APP_VERSION:Lcom/netflix/mediaclient/StatusCode;

    .line 239
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NON_SUPPORTED_LOCALE"

    const/16 v2, 0x9d

    invoke-direct {v0, v1, v2, v6}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NON_SUPPORTED_LOCALE:Lcom/netflix/mediaclient/StatusCode;

    .line 241
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "ALREADY_IN_QUEUE"

    const/16 v2, 0x9e

    invoke-direct {v0, v1, v2, v7}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->ALREADY_IN_QUEUE:Lcom/netflix/mediaclient/StatusCode;

    .line 242
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NOT_IN_QUEUE"

    const/16 v2, 0x9f

    invoke-direct {v0, v1, v2, v8}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NOT_IN_QUEUE:Lcom/netflix/mediaclient/StatusCode;

    .line 243
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "NOT_VALID"

    const/16 v2, 0xa0

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->NOT_VALID:Lcom/netflix/mediaclient/StatusCode;

    .line 244
    new-instance v0, Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "DL_WARNING_DL_N_TIMES_BEFORE_DATE"

    const/16 v2, 0xa1

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_WARNING_DL_N_TIMES_BEFORE_DATE:Lcom/netflix/mediaclient/StatusCode;

    .line 15
    const/16 v0, 0xa2

    new-array v0, v0, [Lcom/netflix/mediaclient/StatusCode;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->UNKNOWN:Lcom/netflix/mediaclient/StatusCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->INTERNAL_ERROR:Lcom/netflix/mediaclient/StatusCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

    aput-object v1, v0, v6

    const/4 v1, 0x3

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NRD_ERROR:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->OBSOLETE_APP_VERSION:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->SET_FAILED:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->CONFIG_REFRESH_FAILED:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->FORCED_TESTING_ERROR:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->INIT_SERVICE_TIMEOUT:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NOT_IMPLEMENTED:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NO_CONNECTIVITY:Lcom/netflix/mediaclient/StatusCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/StatusCode;

    aput-object v1, v0, v8

    const/16 v1, 0xc

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->FATAL_CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->VOIP_CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->FATAL_ESN_BASED_CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NRD_INVALID_SW_VERSION:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ONGOING:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NRD_REGISTRATION_EXISTS:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NRD_REGISTRATION_INVALID_CREDENTIALS:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->USER_SIGNIN_FAILURE:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->USER_SIGNIN_RETRY:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->WRONG_PATH:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->USER_NOT_AUTHORIZED:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->SERVER_ERROR:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->MISSING_ID_IN_CACHE:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->SERVER_ERROR_MAP_CACHE_MISS:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->MAP_ERROR:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->BROWSE_AGENT_WRONG_STATE:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->BROWSE_IQ_WRONG_STATE:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->BROWSE_CW_WRONG_STATE:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DELETED_PROFILE:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->INVALID_COUNRTY:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->INSUFFICIENT_CONTENT:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->PROFILE_NOT_FOUND:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->FALKOR_RESPONSE_PARSE_ERROR:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_CDM:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_GOOGLE_CDM_PROVISIONG_DENIED:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_CDM_KEY_SET_EMPTY:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_CDM_RESOURCE_BUSY:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_CDM_LICENSE_EMPTY:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_FORCE_CRYPTO_FALLBACK:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_CDM_NOT_PROVISIONED:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_CDM_SERVER_DENIED:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_CDM_EXCEPTION:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_WIDEVINE_PLUGIN_BLOCKED:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_WIDEVINE_PLUGIN_CHANGED:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_SIGN:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_VERIFY:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_DECRYPT:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_ENCRYPT:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_GET_KEY_REQUEST:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_PROVIDE_KEY_RESPONSE:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x34

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_KEYS_RESTORE_FAILED:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x35

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_RESET:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x36

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_GOOGLE_DECLINED_PROVISIONING:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x37

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->HTTP_SSL_ERROR:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x38

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->HTTP_SSL_DATE_TIME_ERROR:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x39

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->HTTP_SSL_NO_VALID_CERT:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->HTTP_ERR_404:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->HTTP_ERR_TIMEOUT:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->HTTP_ERR_MALFORMED_URL:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->HTTP_ERR_NOT_RESOLVED:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->HTTP_ERROR_UNKNOWN:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_URL_DOWNLOAD_DISK_IO_ERROR:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x40

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_TITTLE_ALREADY_DOWNLOADED:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x41

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_REGISTRY_CHECKSUM_FAILED:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x42

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_ALL_CDN_URLS_FAILED:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x43

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_OFFLINE_STORAGE_NOT_AVAILABLE:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x44

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_CANT_CREATE_VIEWABLE_DIRECTORY:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x45

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_CANT_PERSIST_MANIFEST:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x46

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_MANIFEST_NO_TRACKS_TO_DOWNLOAD:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x47

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_CANT_DELETE_DOWNLOADABLES:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x48

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_CANT_DELETE_PLAYABLE_DIRECTORY:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x49

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_NOT_ENOUGH_FREE_SPACE:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_MANIFEST_NOT_FOUND_IN_CACHE:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_CANT_PERSIST_REGISTRY:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_TITTLE_ALREADY_REQUESTED_FOR_DOWNLOAD:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_OFFLINE_AGENT_NOT_READY:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_OFFLINE_PLAYABLE_NOT_FOUND:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_USER_NOT_LOGGED_IN:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x50

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_ENCODES_ARE_NOT_AVAILABLE:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x51

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_MANIFEST_DATA_MISSING:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x52

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_BUSY_TRY_DELETE_AGAIN:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x53

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_PLAY_WINDOW_RENEW_FAILED:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x54

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_LIMIT_CANT_DOWNLOAD_TILL_DATE:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x55

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_LIMIT_TOO_MANY_DOWNLOADED_DELETE_SOME:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x56

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_LIMIT_TOO_MANY_DEVICES_PLAN_OPTION:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x57

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_ENCODES_DELETE_ON_REVOCATION:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x58

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_TOTAL_LICENSE_PER_DEVICE_LIMIT:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x59

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_VIEWABLE_DIRECTORY_MISSING:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_BLACKLISTED_DEVICE:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_1:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_2:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_3:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_4:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_5:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x60

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_6:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x61

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_7:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x62

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_8:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x63

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_9:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x64

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_10:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x65

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_11:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x66

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_12:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x67

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->RESPONSE_PARSE_ERROR:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x68

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->BLADERUNNER_FAILURE:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x69

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->OFFLINE_LICENSE_MAX_DEVICE_LIMIT:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->OFFLINE_LICENSE_NOT_TESTER:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->OFFLINE_LICENSE_ERROR:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->OFFLINE_LICENSE_FETCH_NEW:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->INT_ERR_ADVIS_VIDEO_ID_NULL:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->INT_ERR_CMP:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->INT_ERR_CMP_RESP_NULL:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x70

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->INT_ERR_MDX_INIT:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x71

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->INT_ERR_RESOURCE_URL_NULL:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x72

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->INT_ERR_CB_NULL:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x73

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->INT_ERR_REALM_DETAILS_NULL:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x74

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->INT_ERR_MNGR_NOT_READY:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x75

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->INT_ERR_SERVICE_DISCONNECTED:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x76

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->INT_ERR_BAD_COOKIES:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x77

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->INT_ERR_FALKOR_EXCEPTION:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x78

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NET_GENERAL_NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x79

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NET_UNKNOWN_HOST_EXCEPTION:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NET_CONNECTION_EXCEPTION:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NET_SOCKET_TIMEOUT_EXCEPTION:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NET_MALFORMED_URL_ERROR:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NET_NETWORK_IO_EXCEPTION:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NET_CRONET_HOSTNAME_NOT_RESOLVED:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NET_CRONET_INTERNET_DISCONNECTED:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x80

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NET_CRONET_NETWORK_CHANGED:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x81

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NET_CRONET_TIMED_OUT:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x82

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NET_CRONET_CONNECTION_CLOSED:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x83

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NET_CRONET_CONNECTION_TIMED_OUT:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x84

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NET_CRONET_CONNECTION_REFUSED:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x85

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NET_CRONET_CONNECTION_RESET:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x86

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NET_CRONET_ADDRESS_UNREACHABLE:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x87

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NET_CRONET_QUIC_PROTOCOL_FAILED:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x88

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NET_CRONET_ERROR_OTHER:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x89

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NET_LAST_NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->MSL_FAILED_TO_CREATE_CLIENT:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->MSL_FAILED_TO_UPDATE_USER_ID:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->MSL_LEGACY_CRYPTO:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->MSL_BLACKLISTED_DEVICE_FAILBACK:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->MSL_BLACKLISTED_DEVICE_FATAL:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->MSL_LEGACY_CRYPTO_BUT_USED_WIDEVINE_BEFORE:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x90

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->MSL_GENERIC_NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x91

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->MSL_USERAUTH_ENTITY_MISMATCH:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x92

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->MSL_GENERIC_EXCEPTION:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x93

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->MSL_WV_DECRYPT_ERROR:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x94

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->MSL_WV_ENCRYPT_ERROR:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x95

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->MSL_WV_VERIFY_ERROR:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x96

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->MSL_WV_SIGN_ERROR:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x97

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->MSL_LAST_MSL_ERROR:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x98

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->MANIFEST_PARSE_ERROR:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x99

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->MANIFEST_PREFETCH_PROCESSING_ERROR:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->MANIFEST_CACHE_EXTRACT_ERROR:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NON_RECOMMENDED_APP_VERSION:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NON_SUPPORTED_LOCALE:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->ALREADY_IN_QUEUE:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NOT_IN_QUEUE:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NOT_VALID:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_WARNING_DL_N_TIMES_BEFORE_DATE:Lcom/netflix/mediaclient/StatusCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/StatusCode;->$VALUES:[Lcom/netflix/mediaclient/StatusCode;

    .line 294
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_GOOGLE_DECLINED_PROVISIONING:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    sput v0, Lcom/netflix/mediaclient/StatusCode;->DRM_ERROR_LOW_VALUE:I

    .line 295
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_CDM:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    sput v0, Lcom/netflix/mediaclient/StatusCode;->DRM_ERROR_HIGH_VALUE:I

    .line 297
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->HTTP_ERROR_UNKNOWN:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    sput v0, Lcom/netflix/mediaclient/StatusCode;->HTTP_ERROR_LOW_VALUE:I

    .line 298
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->HTTP_SSL_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    sput v0, Lcom/netflix/mediaclient/StatusCode;->HTTP_ERROR_HIGH_VALUE:I

    .line 300
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->MANIFEST_CACHE_EXTRACT_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    sput v0, Lcom/netflix/mediaclient/StatusCode;->MANIFEST_ERROR_LOW:I

    .line 301
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->MANIFEST_PARSE_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    sput v0, Lcom/netflix/mediaclient/StatusCode;->MANIFEST_ERROR_HIGH:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 248
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 249
    iput p3, p0, Lcom/netflix/mediaclient/StatusCode;->mValue:I

    .line 250
    return-void
.end method

.method public static getStatusCodeByValue(I)Lcom/netflix/mediaclient/StatusCode;
    .locals 5

    .prologue
    .line 285
    invoke-static {}, Lcom/netflix/mediaclient/StatusCode;->values()[Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 286
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 291
    :goto_1
    return-object v0

    .line 285
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 291
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static isNetworkError(I)Z
    .locals 2

    .prologue
    .line 320
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->NET_LAST_NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NET_GENERAL_NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/MathUtils;->inclusiveRange(III)Z

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/StatusCode;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/netflix/mediaclient/StatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/StatusCode;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/StatusCode;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->$VALUES:[Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/StatusCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/StatusCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/netflix/mediaclient/StatusCode;->mValue:I

    return v0
.end method

.method public isDrmError()Z
    .locals 3

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    sget v1, Lcom/netflix/mediaclient/StatusCode;->DRM_ERROR_LOW_VALUE:I

    sget v2, Lcom/netflix/mediaclient/StatusCode;->DRM_ERROR_HIGH_VALUE:I

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/MathUtils;->inclusiveRange(III)Z

    move-result v0

    return v0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/netflix/mediaclient/StatusCode;->mValue:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHttpError()Z
    .locals 3

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    sget v1, Lcom/netflix/mediaclient/StatusCode;->HTTP_ERROR_LOW_VALUE:I

    sget v2, Lcom/netflix/mediaclient/StatusCode;->HTTP_ERROR_HIGH_VALUE:I

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/MathUtils;->inclusiveRange(III)Z

    move-result v0

    return v0
.end method

.method public isManifestError()Z
    .locals 3

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    sget v1, Lcom/netflix/mediaclient/StatusCode;->MANIFEST_ERROR_LOW:I

    sget v2, Lcom/netflix/mediaclient/StatusCode;->MANIFEST_ERROR_HIGH:I

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/MathUtils;->inclusiveRange(III)Z

    move-result v0

    return v0
.end method

.method public isMslError()Z
    .locals 3

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->MSL_LAST_MSL_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v1

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->MSL_FAILED_TO_CREATE_CLIENT:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/MathUtils;->inclusiveRange(III)Z

    move-result v0

    return v0
.end method

.method public isSucess()Z
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/netflix/mediaclient/StatusCode;->mValue:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWarning()Z
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/netflix/mediaclient/StatusCode;->mValue:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "StatusCode: [ code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/StatusCode;->mValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/StatusCode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
