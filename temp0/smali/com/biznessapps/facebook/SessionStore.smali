.class public Lcom/biznessapps/facebook/SessionStore;
.super Ljava/lang/Object;
.source "SessionStore.java"


# static fields
.field private static final EXPIRES:Ljava/lang/String; = "expires_in"

.field private static final KEY:Ljava/lang/String; = "facebook-session"

.field private static final TOKEN:Ljava/lang/String; = "access_token"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const-string v1, "facebook-session"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 50
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 51
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 52
    return-void
.end method

.method public static restore(Lcom/facebook/android/Facebook;Landroid/content/Context;)Z
    .locals 4
    .param p0, "session"    # Lcom/facebook/android/Facebook;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const-string v1, "facebook-session"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 42
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "access_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/android/Facebook;->setAccessToken(Ljava/lang/String;)V

    .line 43
    const-string v1, "expires_in"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/facebook/android/Facebook;->setAccessExpires(J)V

    .line 44
    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v1

    return v1
.end method

.method public static save(Lcom/facebook/android/Facebook;Landroid/content/Context;)Z
    .locals 4
    .param p0, "session"    # Lcom/facebook/android/Facebook;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const-string v1, "facebook-session"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 34
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "access_token"

    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 35
    const-string v1, "expires_in"

    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->getAccessExpires()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 36
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method
