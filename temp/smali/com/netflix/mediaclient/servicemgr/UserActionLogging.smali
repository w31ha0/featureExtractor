.class public interface abstract Lcom/netflix/mediaclient/servicemgr/UserActionLogging;
.super Ljava/lang/Object;
.source "UserActionLogging.java"


# static fields
.field public static final ACTIONS:[Ljava/lang/String;

.field public static final ADD_PROFILE_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_ADD_PROFILE_ENDED"

.field public static final ADD_PROFILE_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_ADD_PROFILE_START"

.field public static final ADD_TO_PLAYLIST_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_ADD_TO_PLAYLIST_ENDED"

.field public static final ADD_TO_PLAYLIST_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_ADD_TO_PLAYLIST_START"

.field public static final CHANGE_VALUE_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_CHANGE_VALUE_ENDED"

.field public static final CHANGE_VALUE_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_CHANGE_VALUE_START"

.field public static final CUSTOM_ACTION:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_CUSTOM_ACTION"

.field public static final DELETE_PROFILE_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_DELETE_PROFILE_ENDED"

.field public static final DELETE_PROFILE_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_DELETE_PROFILE_START"

.field public static final DESERIALIZE_LOLOMO_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_DESERIALIZE_LOLOMO_ENDED"

.field public static final DESERIALIZE_LOLOMO_STARTED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_DESERIALIZE_LOLOMO_START"

.field public static final EDIT_PROFILE_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_EDIT_PROFILE_ENDED"

.field public static final EDIT_PROFILE_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_EDIT_PROFILE_START"

.field public static final EXTRA_CMD:Ljava/lang/String; = "cmd"

.field public static final EXTRA_CUSTOM:Ljava/lang/String; = "custom"

.field public static final EXTRA_DEVICE_TOKEN:Ljava/lang/String; = "deviceToken"

.field public static final EXTRA_ERROR:Ljava/lang/String; = "error"

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "error_code"

.field public static final EXTRA_HTTP_RESPONSE:Ljava/lang/String; = "http_response"

.field public static final EXTRA_ID:Ljava/lang/String; = "id"

.field public static final EXTRA_INFO_PUSH_OPT_IN:Ljava/lang/String; = "infoPushOptIn"

.field public static final EXTRA_IS_NEW_MS:Ljava/lang/String; = "is_new"

.field public static final EXTRA_MATCH_SCORE:Ljava/lang/String; = "score"

.field public static final EXTRA_MERCURY_EVENT_GUID:Ljava/lang/String; = "mercuryEventGuid"

.field public static final EXTRA_MERCURY_MESSAGE_GUID:Ljava/lang/String; = "mercuryMessageGuid"

.field public static final EXTRA_NEW_VALUE:Ljava/lang/String; = "new_value"

.field public static final EXTRA_PAYMENT_TYPE:Ljava/lang/String; = "payment_type"

.field public static final EXTRA_PLAYER_TYPE:Ljava/lang/String; = "playerType"

.field public static final EXTRA_PLAY_LOCATION:Ljava/lang/String; = "playLocation"

.field public static final EXTRA_PROFILE_AGE:Ljava/lang/String; = "profile_age"

.field public static final EXTRA_PROFILE_ID:Ljava/lang/String; = "profile_id"

.field public static final EXTRA_PROFILE_IS_KIDS:Ljava/lang/String; = "profile_is_kids"

.field public static final EXTRA_PROFILE_NAME:Ljava/lang/String; = "profile_name"

.field public static final EXTRA_RANK:Ljava/lang/String; = "rank"

.field public static final EXTRA_RATING:Ljava/lang/String; = "rating"

.field public static final EXTRA_RATING_TYPE:Ljava/lang/String; = "rating_type"

.field public static final EXTRA_REASON:Ljava/lang/String; = "reason"

.field public static final EXTRA_REMEMBER_PROFILE:Ljava/lang/String; = "remember_profile"

.field public static final EXTRA_RENO_CAUSE:Ljava/lang/String; = "renoCause"

.field public static final EXTRA_RENO_CREATION_TS:Ljava/lang/String; = "renoCreationTimestamp"

.field public static final EXTRA_RENO_MESSAGE_GUID:Ljava/lang/String; = "renoMessageGuid"

.field public static final EXTRA_STREAMS:Ljava/lang/String; = "streams"

.field public static final EXTRA_SUCCESS:Ljava/lang/String; = "sucess"

.field public static final EXTRA_TERM:Ljava/lang/String; = "term"

.field public static final EXTRA_TITLE_RANK:Ljava/lang/String; = "title_rank"

.field public static final EXTRA_URL:Ljava/lang/String; = "url"

.field public static final EXTRA_USER_PUSH_OPT_IN:Ljava/lang/String; = "userPushOptIn"

.field public static final EXTRA_VIEW:Ljava/lang/String; = "view"

.field public static final LOGIN_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_LOGIN_ENDED"

.field public static final LOGIN_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_LOGIN_START"

.field public static final NAVIGATION_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_NAVIGATION_ENDED"

.field public static final NAVIGATION_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_NAVIGATION_START"

.field public static final NEW_LOLOMO_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_NEW_LOLOMO_ENDED"

.field public static final NEW_LOLOMO_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_NEW_LOLOMO_START"

.field public static final POSTPLAY_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_POSTPLAY_ENDED"

.field public static final POSTPLAY_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_POSTPLAY_START"

.field public static final PREAPP_WIDGET_ACTION_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.PREAPP_WIDGET_ACTION_ENDED"

.field public static final PREAPP_WIDGET_ACTION_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.PREAPP_WIDGET_ACTION_START"

.field public static final PREFETCH_LOLOMO_JOB_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_PREFETCH_LOLOMO_JOB_ENDED"

.field public static final PREFETCH_LOLOMO_JOB_STARTED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_PREFETCH_LOLOMO_JOB_START"

.field public static final PRIVACY_VIOLATION_PLACEHOLDER:Ljava/lang/String; = "PRIVACY_VIOLATION"

.field public static final RATE_TITLE_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_RATE_TITLE_ENDED"

.field public static final RATE_TITLE_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_RATE_TITLE_START"

.field public static final REGISTER_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_REGISTER_ENDED"

.field public static final REGISTER_FOR_PUSH_NOTIFICATION_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_REGISTER_FOR_PUSH_NOTIFICATION_ENDED"

.field public static final REGISTER_FOR_PUSH_NOTIFICATION_STARTED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_REGISTER_FOR_PUSH_NOTIFICATION_START"

.field public static final REGISTER_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_REGISTER_START"

.field public static final REMOVE_FROM_PLAYLIST_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_REMOVE_FROM_PLAYLIST_ENDED"

.field public static final REMOVE_FROM_PLAYLIST_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_REMOVE_FROM_PLAYLIST_START"

.field public static final SEARCH_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_SEARCH_ENDED"

.field public static final SEARCH_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_SEARCH_START"

.field public static final SELECT_PROFILE_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_SELECT_PROFILE_ENDED"

.field public static final SELECT_PROFILE_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_SELECT_PROFILE_START"

.field public static final SERIALIZE_LOLOMO_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_SERIALIZE_LOLOMO_ENDED"

.field public static final SERIALIZE_LOLOMO_STARTED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_SERIALIZE_LOLOMO_START"

.field public static final SHARE_SHEET_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_SHARE_SHEET_ENDED"

.field public static final SHARE_SHEET_OPEN_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_SHARE_SHEET_OPEN_ENDED"

.field public static final SHARE_SHEET_OPEN_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_SHARE_SHEET_OPEN_START"

.field public static final SHARE_SHEET_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_SHARE_SHEET_START"

.field public static final SIGNUP_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_SIGNUP_ENDED"

.field public static final SIGNUP_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_SIGNUP_START"

.field public static final START_PLAY_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_START_PLAY_ENDED"

.field public static final START_PLAY_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_START_PLAY_START"

.field public static final SUBMIT_PAYMENT_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_SUBMIT_PAYMENT_ENDED"

.field public static final SUBMIT_PAYMENT_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_SUBMIT_PAYMENT_START"

.field public static final SURVEY_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_SURVEY_ENDED"

.field public static final SURVEY_QUESTION_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_SURVEY_QUESTION_ENDED"

.field public static final SURVEY_QUESTION_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_SURVEY_QUESTION_START"

.field public static final SURVEY_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_SURVEY_START"

.field public static final UPGRADE_STREAMS_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_UPGRADE_STREAMS_ENDED"

.field public static final UPGRADE_STREAMS_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_UIA_UPGRADE_STREAMS_START"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 117
    const/16 v0, 0x37

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SIGNUP_START"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SIGNUP_ENDED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_ADD_TO_PLAYLIST_START"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_ADD_TO_PLAYLIST_ENDED"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_LOGIN_START"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_LOGIN_ENDED"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_REMOVE_FROM_PLAYLIST_START"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_REMOVE_FROM_PLAYLIST_ENDED"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_NAVIGATION_START"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_NAVIGATION_ENDED"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_RATE_TITLE_START"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_RATE_TITLE_ENDED"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_REGISTER_START"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_REGISTER_ENDED"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SEARCH_START"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SEARCH_ENDED"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_START_PLAY_START"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_START_PLAY_ENDED"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SUBMIT_PAYMENT_START"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SUBMIT_PAYMENT_ENDED"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_UPGRADE_STREAMS_START"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_UPGRADE_STREAMS_ENDED"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SELECT_PROFILE_START"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SELECT_PROFILE_ENDED"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_ADD_PROFILE_START"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_ADD_PROFILE_ENDED"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_EDIT_PROFILE_START"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_EDIT_PROFILE_ENDED"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_DELETE_PROFILE_START"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_DELETE_PROFILE_ENDED"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_NEW_LOLOMO_START"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_NEW_LOLOMO_ENDED"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SHARE_SHEET_START"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SHARE_SHEET_ENDED"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SHARE_SHEET_OPEN_START"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SHARE_SHEET_OPEN_ENDED"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.PREAPP_WIDGET_ACTION_START"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.PREAPP_WIDGET_ACTION_ENDED"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_POSTPLAY_START"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_POSTPLAY_ENDED"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_CHANGE_VALUE_START"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_CHANGE_VALUE_ENDED"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SURVEY_START"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SURVEY_ENDED"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SURVEY_QUESTION_START"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SURVEY_QUESTION_ENDED"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_PREFETCH_LOLOMO_JOB_START"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_PREFETCH_LOLOMO_JOB_ENDED"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SERIALIZE_LOLOMO_START"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SERIALIZE_LOLOMO_ENDED"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_DESERIALIZE_LOLOMO_START"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_DESERIALIZE_LOLOMO_ENDED"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_REGISTER_FOR_PUSH_NOTIFICATION_START"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_REGISTER_FOR_PUSH_NOTIFICATION_ENDED"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_CUSTOM_ACTION"

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging;->ACTIONS:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract endAcknowledgeSignupSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
.end method

.method public abstract endAddProfileSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;)V
.end method

.method public abstract endAddToPlaylistSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;I)V
.end method

.method public abstract endAllActiveSessions()V
.end method

.method public abstract endChangeValueSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;)V
.end method

.method public abstract endDeleteProfileSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
.end method

.method public abstract endDeserializeLolomoSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;J)V
.end method

.method public abstract endEditProfileSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;)V
.end method

.method public abstract endLoginSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
.end method

.method public abstract endNavigationSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
.end method

.method public abstract endNewLolomoSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract endPostPlaySession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;ZZLjava/lang/Integer;Ljava/lang/Integer;I)V
.end method

.method public abstract endPreAppWidgetActionSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
.end method

.method public abstract endPrefetchLolomoJobSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
.end method

.method public abstract endRateTitleSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;ILjava/lang/String;IZ)V
.end method

.method public abstract endRegisterForPushNotifications(Ljava/lang/String;ZZLcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
.end method

.method public abstract endRegisterSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
.end method

.method public abstract endRemoveFromPlaylistSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
.end method

.method public abstract endSearchSession(JLcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
.end method

.method public abstract endSelectProfileSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
.end method

.method public abstract endSerializeLolomoSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;J)V
.end method

.method public abstract endShareSheetOpenSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
.end method

.method public abstract endShareSheetSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
.end method

.method public abstract endStartPlaySession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V
.end method

.method public abstract endSubmitPaymentSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;ZLcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;Lorg/json/JSONObject;)V
.end method

.method public abstract endSurveyQuestionSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract endSurveySession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;)V
.end method

.method public abstract endUpgradeStreamsSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;)V
.end method

.method public abstract handleIntent(Landroid/content/Intent;Z)Z
.end method

.method public abstract reportCustomAction(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lorg/json/JSONObject;)V
.end method

.method public abstract setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V
.end method

.method public abstract startAcknowledgeSignupSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
.end method

.method public abstract startAddProfileSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
.end method

.method public abstract startAddToPlaylistSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
.end method

.method public abstract startChangeValueSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
.end method

.method public abstract startDeleteProfileSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
.end method

.method public abstract startDeserializeLolomoSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
.end method

.method public abstract startEditProfileSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
.end method

.method public abstract startLoginSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
.end method

.method public abstract startNavigationSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
.end method

.method public abstract startNewLolomoSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
.end method

.method public abstract startPostPlaySession(ZILcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;)V
.end method

.method public abstract startPreAppWidgetActionSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract startPrefetchLolomoJobSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
.end method

.method public abstract startRateTitleSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
.end method

.method public abstract startRegisterForPushNotifications(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
.end method

.method public abstract startRegisterSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
.end method

.method public abstract startRemoveFromPlaylistSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
.end method

.method public abstract startSearchSession(JLcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V
.end method

.method public abstract startSelectProfileSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
.end method

.method public abstract startSerializeLolomoSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
.end method

.method public abstract startShareSheetOpenSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
.end method

.method public abstract startShareSheetSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
.end method

.method public abstract startStartPlaySession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
.end method

.method public abstract startSubmitPaymentSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
.end method

.method public abstract startSurveyQuestionSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
.end method

.method public abstract startSurveySession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
.end method

.method public abstract startUpgradeStreamsSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;)V
.end method
