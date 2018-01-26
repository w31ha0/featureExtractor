.class final Lorg/acra/ACRA$1;
.super Ljava/lang/Object;
.source "ACRA.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/acra/ACRA;->init(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 7
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 201
    const-string v4, "acra.disable"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "acra.enable"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 202
    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 204
    .local v0, "disableAcra":Ljava/lang/Boolean;
    :try_start_0
    const-string v4, "acra.disable"

    const-string v5, "acra.enable"

    const/4 v6, 0x1

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_2

    :goto_0
    invoke-interface {p1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 209
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 210
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/acra/ErrorReporter;->disable()V

    .line 220
    .end local v0    # "disableAcra":Ljava/lang/Boolean;
    :cond_1
    :goto_2
    return-void

    .restart local v0    # "disableAcra":Ljava/lang/Boolean;
    :cond_2
    move v2, v3

    .line 204
    goto :goto_0

    .line 213
    :cond_3
    :try_start_1
    invoke-static {}, Lorg/acra/ACRA;->access$000()V
    :try_end_1
    .catch Lorg/acra/ACRAConfigurationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Lorg/acra/ACRAConfigurationException;
    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 206
    .end local v1    # "e":Lorg/acra/ACRAConfigurationException;
    :catch_1
    move-exception v2

    goto :goto_1
.end method
