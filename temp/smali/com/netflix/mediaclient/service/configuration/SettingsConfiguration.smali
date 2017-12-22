.class public final Lcom/netflix/mediaclient/service/configuration/SettingsConfiguration;
.super Ljava/lang/Object;
.source "SettingsConfiguration.java"


# static fields
.field private static final PREFERENCE_CURRENT_CAST_APPID:Ljava/lang/String; = "preference_key_CURRENT_cast_application_id"

.field private static final PREFERENCE_NEW_CAST_APPID:Ljava/lang/String; = "preference_key_new_cast_application_id"

.field private static final PREFERENCE_PUSH_OPTIN_STATUS:Ljava/lang/String; = "preference_key_push_optin_status"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCastApplicationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    const-string/jumbo v0, "preference_key_CURRENT_cast_application_id"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNewCastApplicationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    const-string/jumbo v0, "preference_key_new_cast_application_id"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPushOptInStatus(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 34
    const-string/jumbo v0, "preference_key_push_optin_status"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setCastApplicationId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "preference_key_CURRENT_cast_application_id"

    invoke-static {p0, v0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 30
    return-void
.end method

.method public static setNewCastApplicationId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 19
    const-string/jumbo v0, "preference_key_new_cast_application_id"

    invoke-static {p0, v0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 20
    return-void
.end method

.method public static setPushOptInStatus(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "preference_key_push_optin_status"

    invoke-static {p0, v0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 39
    return-void
.end method
