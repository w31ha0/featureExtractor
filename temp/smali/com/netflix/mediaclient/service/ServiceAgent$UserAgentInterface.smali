.class public interface abstract Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;
.super Ljava/lang/Object;
.source "ServiceAgent.java"


# static fields
.field public static final AUTOLOGIN:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.USER_AUTOLOGIN"

.field public static final CATEGORY_NFUSER:Ljava/lang/String; = "com.netflix.mediaclient.intent.category.USER"

.field public static final CREATE_AUTOLOGIN_TOKEN:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.USER_CREATE_AUTOLOGIN_TOKEN"

.field public static final DEFAULT_EXPIRATION_IN_MS:J = 0xdbba0L

.field public static final EXTRA_EXPIRATION:Ljava/lang/String; = "expiration"


# virtual methods
.method public abstract forceLogoutUser(Z)V
.end method

.method public abstract getCurrentAppLanguage()Ljava/lang/String;
.end method

.method public abstract getCurrentAppLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;
.end method

.method public abstract getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;
.end method

.method public abstract getCurrentProfileGuid()Ljava/lang/String;
.end method

.method public abstract getGeoCountry()Ljava/lang/String;
.end method

.method public abstract getMSLUserCredentialRegistry()Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;
.end method

.method public abstract getPrimaryProfileGuid()Ljava/lang/String;
.end method

.method public abstract getReqCountry()Ljava/lang/String;
.end method

.method public abstract getSubtitleDefaults()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
.end method

.method public abstract getUserCredentialRegistry()Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;
.end method

.method public abstract getUserSubtitlePreferences()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
.end method

.method public abstract isAgeVerified()Z
.end method

.method public abstract isCurrentProfileInstantQueueEnabled()Z
.end method

.method public abstract isPotentialPrivacyViolationFoundForLogging(Ljava/lang/String;)Z
.end method

.method public abstract isProfileSwitchingDisabled()Z
.end method

.method public abstract isUserLoggedIn()Z
.end method

.method public abstract logoutUser()V
.end method

.method public abstract refreshProfileSwitchingStatus()V
.end method

.method public abstract refreshUserAuthorizationData(Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;)V
.end method
