.class public final Lcom/netflix/mediaclient/util/PreferenceUtils;
.super Ljava/lang/Object;
.source "PreferenceUtils.java"


# static fields
.field public static final PREFS_NAME:Ljava/lang/String; = "nfxpref"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static containsPref(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 343
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 352
    :goto_0
    return v0

    .line 348
    :cond_0
    :try_start_0
    const-string/jumbo v1, "nfxpref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v1

    .line 350
    const-string/jumbo v2, "nfxpref"

    const-string/jumbo v3, "Failed to get preferences!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    .line 39
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    :goto_0
    return p2

    .line 44
    :cond_0
    :try_start_0
    const-string/jumbo v0, "nfxpref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    const-string/jumbo v1, "nfxpref"

    const-string/jumbo v2, "Failed to get preferences!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getCrashReport(Landroid/content/Context;)Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 406
    const-string/jumbo v0, "nfxpref"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 410
    :try_start_0
    const-string/jumbo v0, "NF_CrashReport"

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 411
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    new-instance v0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;

    invoke-direct {v0, v3}, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :goto_0
    if-nez v0, :cond_0

    .line 418
    invoke-static {v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->removeCrashReport(Landroid/content/SharedPreferences;)V

    .line 422
    :goto_1
    return-object v1

    .line 414
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 422
    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getFloatPref(Landroid/content/Context;Ljava/lang/String;F)F
    .locals 3

    .prologue
    .line 286
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    :goto_0
    return p2

    .line 291
    :cond_0
    :try_start_0
    const-string/jumbo v0, "nfxpref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    const-string/jumbo v1, "nfxpref"

    const-string/jumbo v2, "Failed to get preferences!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getIntPref(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3

    .prologue
    .line 89
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return p2

    .line 94
    :cond_0
    :try_start_0
    const-string/jumbo v0, "nfxpref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    const-string/jumbo v1, "nfxpref"

    const-string/jumbo v2, "Failed to get preferences!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getLongPref(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 4

    .prologue
    .line 243
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    :goto_0
    return-wide p2

    .line 248
    :cond_0
    :try_start_0
    const-string/jumbo v0, "nfxpref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    const-string/jumbo v1, "nfxpref"

    const-string/jumbo v2, "Failed to get preferences!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 166
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-object p2

    .line 171
    :cond_0
    :try_start_0
    const-string/jumbo v0, "nfxpref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    const-string/jumbo v1, "nfxpref"

    const-string/jumbo v2, "Failed to get preferences!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 61
    .line 62
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    :goto_0
    return v0

    .line 67
    :cond_0
    :try_start_0
    const-string/jumbo v1, "nfxpref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 68
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 69
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    const/4 v0, 0x1

    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    .line 73
    const-string/jumbo v2, "nfxpref"

    const-string/jumbo v3, "Failed to save to preferences!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static putFloatPref(Landroid/content/Context;Ljava/lang/String;F)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 215
    .line 216
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    :goto_0
    return v0

    .line 221
    :cond_0
    :try_start_0
    const-string/jumbo v1, "nfxpref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 222
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 223
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 224
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    const/4 v0, 0x1

    goto :goto_0

    .line 226
    :catch_0
    move-exception v1

    .line 227
    const-string/jumbo v2, "nfxpref"

    const-string/jumbo v3, "Failed to save to preferences!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static putIntPref(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 111
    .line 112
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    :goto_0
    return v0

    .line 117
    :cond_0
    :try_start_0
    const-string/jumbo v1, "nfxpref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 118
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 119
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 120
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    const/4 v0, 0x1

    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    const-string/jumbo v2, "nfxpref"

    const-string/jumbo v3, "Failed to save to preferences!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static putLongPref(Landroid/content/Context;Ljava/lang/String;F)V
    .locals 2

    .prologue
    .line 265
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    :goto_0
    return-void

    .line 269
    :cond_0
    const-string/jumbo v0, "nfxpref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 270
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 271
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 272
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static putLongPref(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 188
    .line 189
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    :goto_0
    return v0

    .line 194
    :cond_0
    :try_start_0
    const-string/jumbo v1, "nfxpref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 195
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 196
    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 197
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    const/4 v0, 0x1

    goto :goto_0

    .line 199
    :catch_0
    move-exception v1

    .line 200
    const-string/jumbo v2, "nfxpref"

    const-string/jumbo v3, "Failed to save to preferences!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 138
    .line 139
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    :goto_0
    return v0

    .line 144
    :cond_0
    :try_start_0
    const-string/jumbo v1, "nfxpref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 145
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 146
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 147
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    const/4 v0, 0x1

    goto :goto_0

    .line 149
    :catch_0
    move-exception v1

    .line 150
    const-string/jumbo v2, "nfxpref"

    const-string/jumbo v3, "Failed to save to preferences!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static removeCrashReport(Landroid/content/SharedPreferences;)V
    .locals 2

    .prologue
    .line 450
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 451
    const-string/jumbo v1, "NF_CrashReport"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 452
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 453
    return-void
.end method

.method private static removeCrashReport(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 433
    .line 435
    :try_start_0
    const-string/jumbo v1, "nfxpref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 436
    invoke-static {v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->removeCrashReport(Landroid/content/SharedPreferences;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    const/4 v0, 0x1

    .line 441
    :goto_0
    return v0

    .line 438
    :catch_0
    move-exception v1

    .line 439
    const-string/jumbo v2, "nfxpref"

    const-string/jumbo v3, "Failed to remove crash report from preferences!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static removePref(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 307
    .line 308
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    :goto_0
    return v0

    .line 313
    :cond_0
    :try_start_0
    const-string/jumbo v1, "nfxpref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 314
    if-nez v1, :cond_1

    .line 315
    const-string/jumbo v1, "nfxpref"

    const-string/jumbo v2, "Prefs null, not expected!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v1

    .line 329
    const-string/jumbo v2, "nfxpref"

    const-string/jumbo v3, "Failed to save to preferences!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 319
    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 320
    if-nez v1, :cond_2

    .line 321
    const-string/jumbo v1, "nfxpref"

    const-string/jumbo v2, "Editor null, not expected!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 325
    :cond_2
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 326
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 327
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static saveCrashReport(Landroid/content/Context;Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 385
    .line 387
    :try_start_0
    const-string/jumbo v1, "nfxpref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 388
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 389
    const-string/jumbo v2, "NF_CrashReport"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->toJsonString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 390
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    const/4 v0, 0x1

    .line 395
    :goto_0
    return v0

    .line 392
    :catch_0
    move-exception v1

    .line 393
    const-string/jumbo v2, "nfxpref"

    const-string/jumbo v3, "Failed to save to preferences!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static validate(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 364
    if-nez p0, :cond_0

    .line 365
    const-string/jumbo v1, "nfxpref"

    const-string/jumbo v2, "Context is null!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :goto_0
    return v0

    .line 369
    :cond_0
    if-nez p1, :cond_1

    .line 370
    const-string/jumbo v1, "nfxpref"

    const-string/jumbo v2, "Name is null!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 374
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
