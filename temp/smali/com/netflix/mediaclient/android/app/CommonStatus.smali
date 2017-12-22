.class public interface abstract Lcom/netflix/mediaclient/android/app/CommonStatus;
.super Ljava/lang/Object;
.source "CommonStatus.java"


# static fields
.field public static final ALREADY_IN_QUEUE:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final BLADERUNNER_FAILURE:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final DRM_FAILURE_CDM:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final DRM_FAILURE_CDM_EXCEPTION:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final DRM_FAILURE_CDM_KEY_SET_EMPTY:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final DRM_FAILURE_CDM_LICENSE_EMPTY:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final DRM_FAILURE_CDM_NOT_PROVISIONED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final DRM_FAILURE_CDM_RESOURCE_BUSY:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final DRM_FAILURE_CDM_SERVER_DENIED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final DRM_FAILURE_GOOGLE_CDM_PROVISIONG_DENIED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final DRM_FAILURE_GOOGLE_DECLINED_PROVISIONING:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final FATAL_CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final FATAL_ESN_BASED_CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final FORCED_TESTING_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final HTTP_SSL_DATE_TIME_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final HTTP_SSL_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final HTTP_SSL_NO_VALID_CERT:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final INIT_SERVICE_TIMEOUT:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final INTERNAL_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final INT_ERR_ADVIS_VIDEO_ID_NULL:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final INT_ERR_BAD_COOKIES:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final INT_ERR_CB_NULL:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final INT_ERR_CMP_RESP_NULL:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final INT_ERR_MDX_INIT:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final INT_ERR_MNGR_NOT_READY:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final INT_ERR_REALM_DETAILS_NULL:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final INT_ERR_RESOURCE_URL_NULL:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final MANIFEST_PREFETCH_PROCESSING_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final MSL_BLACKLISTED_DEVICE_FAILBACK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final MSL_BLACKLISTED_DEVICE_FATAL:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final MSL_FAILED_TO_CREATE_CLIENT:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final MSL_LEGACY_CRYPTO:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final MSL_LEGACY_CRYPTO_BUT_USED_WIDEVINE_BEFORE:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final NON_RECOMMENDED_APP_VERSION:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final NON_SUPPORTED_LOCALE:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final NOT_IMPLEMENTED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final NOT_IN_QUEUE:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final NOT_VALID:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final NO_CONNECTIVITY:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final NRD_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final OBSOLETE_APP_VERSION:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final SERVICE_DISCONNECTED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final SIGNIN_FAILURE:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final UNKNOWN:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

.field public static final VOIP_CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->OBSOLETE_APP_VERSION:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OBSOLETE_APP_VERSION:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NON_RECOMMENDED_APP_VERSION:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->NON_RECOMMENDED_APP_VERSION:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NON_SUPPORTED_LOCALE:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->NON_SUPPORTED_LOCALE:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->FORCED_TESTING_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->FORCED_TESTING_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NOT_IMPLEMENTED:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->NOT_IMPLEMENTED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 20
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->UNKNOWN:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->UNKNOWN:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->ALREADY_IN_QUEUE:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->ALREADY_IN_QUEUE:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NOT_IN_QUEUE:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->NOT_IN_QUEUE:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 23
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NOT_VALID:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->NOT_VALID:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 26
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NRD_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->NRD_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 27
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NO_CONNECTIVITY:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->NO_CONNECTIVITY:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->INIT_SERVICE_TIMEOUT:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->INIT_SERVICE_TIMEOUT:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 29
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 30
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->FATAL_ESN_BASED_CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->FATAL_ESN_BASED_CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 33
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->FATAL_CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->FATAL_CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 35
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->VOIP_CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->VOIP_CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 36
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->HTTP_SSL_DATE_TIME_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->HTTP_SSL_DATE_TIME_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 37
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_CDM:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 38
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_CDM_NOT_PROVISIONED:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM_NOT_PROVISIONED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 39
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_CDM_SERVER_DENIED:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM_SERVER_DENIED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 40
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_CDM_EXCEPTION:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM_EXCEPTION:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 41
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_CDM_KEY_SET_EMPTY:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM_KEY_SET_EMPTY:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 42
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_CDM_RESOURCE_BUSY:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM_RESOURCE_BUSY:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 43
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_CDM_LICENSE_EMPTY:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM_LICENSE_EMPTY:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 45
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_GOOGLE_CDM_PROVISIONG_DENIED:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_GOOGLE_CDM_PROVISIONG_DENIED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 46
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->HTTP_SSL_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->HTTP_SSL_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 47
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->HTTP_SSL_NO_VALID_CERT:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->HTTP_SSL_NO_VALID_CERT:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 48
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->USER_SIGNIN_FAILURE:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->SIGNIN_FAILURE:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 49
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->BLADERUNNER_FAILURE:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->BLADERUNNER_FAILURE:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 50
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_GOOGLE_DECLINED_PROVISIONING:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_GOOGLE_DECLINED_PROVISIONING:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 51
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->MSL_LEGACY_CRYPTO:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->MSL_LEGACY_CRYPTO:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 52
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->MSL_LEGACY_CRYPTO_BUT_USED_WIDEVINE_BEFORE:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->MSL_LEGACY_CRYPTO_BUT_USED_WIDEVINE_BEFORE:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 53
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->MSL_BLACKLISTED_DEVICE_FAILBACK:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->MSL_BLACKLISTED_DEVICE_FAILBACK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 54
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->MSL_BLACKLISTED_DEVICE_FATAL:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->MSL_BLACKLISTED_DEVICE_FATAL:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 57
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->INTERNAL_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->INTERNAL_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 58
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->INT_ERR_SERVICE_DISCONNECTED:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->SERVICE_DISCONNECTED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 59
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->INT_ERR_ADVIS_VIDEO_ID_NULL:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->INT_ERR_ADVIS_VIDEO_ID_NULL:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 60
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->INT_ERR_CMP_RESP_NULL:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->INT_ERR_CMP_RESP_NULL:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 61
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->INT_ERR_MDX_INIT:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->INT_ERR_MDX_INIT:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 62
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->INT_ERR_RESOURCE_URL_NULL:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->INT_ERR_RESOURCE_URL_NULL:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 63
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->INT_ERR_CB_NULL:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->INT_ERR_CB_NULL:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 64
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->INT_ERR_REALM_DETAILS_NULL:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->INT_ERR_REALM_DETAILS_NULL:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 65
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->INT_ERR_MNGR_NOT_READY:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->INT_ERR_MNGR_NOT_READY:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 66
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->INT_ERR_BAD_COOKIES:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->INT_ERR_BAD_COOKIES:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 68
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->MSL_FAILED_TO_CREATE_CLIENT:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->MSL_FAILED_TO_CREATE_CLIENT:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 69
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->MANIFEST_PREFETCH_PROCESSING_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->MANIFEST_PREFETCH_PROCESSING_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    return-void
.end method
