.class public Lcom/netflix/mediaclient/util/NetflixPreference;
.super Ljava/lang/Object;
.source "NetflixPreference.java"


# static fields
.field private static final PREFS_NAME:Ljava/lang/String; = "nfxpref"

.field private static final TAG:Ljava/lang/String; = "nfxpref"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mContext:Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Lcom/netflix/mediaclient/util/NetflixPreference;->load()Z

    .line 33
    return-void
.end method

.method private load()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 42
    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "nfxpref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mPrefs:Landroid/content/SharedPreferences;

    .line 45
    iget-object v1, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mEditor:Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    const/4 v0, 0x1

    .line 51
    :goto_0
    return v0

    .line 47
    :catch_0
    move-exception v1

    .line 48
    const-string/jumbo v2, "nfxpref"

    const-string/jumbo v3, "Failed to get preferences!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private validate(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 323
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    const-string/jumbo v0, "nfxpref"

    const-string/jumbo v1, "Name is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v0, 0x0

    .line 328
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public commit()Z
    .locals 4

    .prologue
    .line 333
    const/4 v0, 0x0

    .line 335
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 339
    :goto_0
    return v0

    .line 336
    :catch_0
    move-exception v1

    .line 337
    const-string/jumbo v2, "nfxpref"

    const-string/jumbo v3, "Failed to save to preferences!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public containsPref(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 303
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/NetflixPreference;->validate(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 312
    :goto_0
    return v0

    .line 308
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 309
    :catch_0
    move-exception v1

    .line 310
    const-string/jumbo v2, "nfxpref"

    const-string/jumbo v3, "Failed to get preferences!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getBooleanPref(Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/NetflixPreference;->validate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return p2

    .line 69
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    const-string/jumbo v1, "nfxpref"

    const-string/jumbo v2, "Failed to get preferences!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getFloatPref(Ljava/lang/String;F)F
    .locals 3

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/NetflixPreference;->validate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    :goto_0
    return p2

    .line 266
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    const-string/jumbo v1, "nfxpref"

    const-string/jumbo v2, "Failed to get preferences!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getIntPref(Ljava/lang/String;I)I
    .locals 3

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/NetflixPreference;->validate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    :goto_0
    return p2

    .line 115
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    const-string/jumbo v1, "nfxpref"

    const-string/jumbo v2, "Failed to get preferences!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getLongPref(Ljava/lang/String;J)J
    .locals 4

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/NetflixPreference;->validate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    :goto_0
    return-wide p2

    .line 228
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    const-string/jumbo v1, "nfxpref"

    const-string/jumbo v2, "Failed to get preferences!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/NetflixPreference;->validate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-object p2

    .line 183
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    const-string/jumbo v1, "nfxpref"

    const-string/jumbo v2, "Failed to get preferences!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public putBooleanPref(Ljava/lang/String;Z)Z
    .locals 4

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/NetflixPreference;->validate(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    :goto_0
    return v0

    .line 91
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    const/4 v0, 0x1

    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    .line 94
    const-string/jumbo v2, "nfxpref"

    const-string/jumbo v3, "Failed to save to preferences!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public putIntPref(Ljava/lang/String;I)Z
    .locals 4

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/NetflixPreference;->validate(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    :goto_0
    return v0

    .line 137
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    const/4 v0, 0x1

    goto :goto_0

    .line 139
    :catch_0
    move-exception v1

    .line 140
    const-string/jumbo v2, "nfxpref"

    const-string/jumbo v3, "Failed to save to preferences!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public putLongPref(Ljava/lang/String;F)V
    .locals 1

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/NetflixPreference;->validate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putLongPref(Ljava/lang/String;J)Z
    .locals 4

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 200
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/NetflixPreference;->validate(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    :goto_0
    return v0

    .line 205
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    const/4 v0, 0x1

    goto :goto_0

    .line 207
    :catch_0
    move-exception v1

    .line 208
    const-string/jumbo v2, "nfxpref"

    const-string/jumbo v3, "Failed to save to preferences!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public putStringPref(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 155
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/NetflixPreference;->validate(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    :goto_0
    return v0

    .line 160
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    const/4 v0, 0x1

    goto :goto_0

    .line 162
    :catch_0
    move-exception v1

    .line 163
    const-string/jumbo v2, "nfxpref"

    const-string/jumbo v3, "Failed to save to preferences!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removePref(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 281
    const/4 v0, 0x0

    .line 282
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/NetflixPreference;->validate(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    :goto_0
    return v0

    .line 287
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    const/4 v0, 0x1

    goto :goto_0

    .line 289
    :catch_0
    move-exception v1

    .line 290
    const-string/jumbo v2, "nfxpref"

    const-string/jumbo v3, "Failed to save to preferences!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
