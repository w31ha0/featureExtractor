.class Lb/a/a/a/a/g/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/a/a/a/g/y;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lb/a/a/a/a/b/s;JLorg/json/JSONObject;)J
    .locals 4

    .prologue
    .line 199
    .line 201
    const-string v0, "expires_at"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const-string v0, "expires_at"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 211
    :goto_0
    return-wide v0

    .line 207
    :cond_0
    invoke-interface {p1}, Lb/a/a/a/a/b/s;->a()J

    move-result-wide v0

    .line 208
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method private b(Lorg/json/JSONObject;)Lb/a/a/a/a/g/e;
    .locals 8

    .prologue
    .line 69
    const-string v0, "identifier"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    const-string v0, "reports_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 73
    const-string v0, "update_required"

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 77
    const/4 v6, 0x0

    .line 80
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v7, "hash"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/a/a/a/a/g/k;->c(Lorg/json/JSONObject;)Lb/a/a/a/a/g/c;

    move-result-object v6

    .line 85
    :cond_0
    new-instance v0, Lb/a/a/a/a/g/e;

    invoke-direct/range {v0 .. v6}, Lb/a/a/a/a/g/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLb/a/a/a/a/g/c;)V

    return-object v0
.end method

.method private c(Lorg/json/JSONObject;)Lb/a/a/a/a/g/c;
    .locals 4

    .prologue
    .line 89
    const-string v0, "hash"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    const-string v1, "width"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 91
    const-string v2, "height"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 93
    new-instance v3, Lb/a/a/a/a/g/c;

    invoke-direct {v3, v0, v1, v2}, Lb/a/a/a/a/g/c;-><init>(Ljava/lang/String;II)V

    return-object v3
.end method

.method private d(Lorg/json/JSONObject;)Lb/a/a/a/a/g/m;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 97
    const-string v0, "prompt_enabled"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 100
    const-string v1, "collect_logged_exceptions"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 103
    const-string v2, "collect_reports"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 106
    const-string v3, "collect_analytics"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 110
    new-instance v4, Lb/a/a/a/a/g/m;

    invoke-direct {v4, v0, v1, v2, v3}, Lb/a/a/a/a/g/m;-><init>(ZZZZ)V

    return-object v4
.end method

.method private e(Lorg/json/JSONObject;)Lb/a/a/a/a/g/b;
    .locals 6

    .prologue
    .line 115
    const-string v0, "url"

    const-string v1, "https://e.crashlytics.com/spi/v2/events"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    const-string v0, "flush_interval_secs"

    const/16 v2, 0x258

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 120
    const-string v0, "max_byte_size_per_file"

    const/16 v3, 0x1f40

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 123
    const-string v0, "max_file_count_per_send"

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 126
    const-string v0, "max_pending_send_file_count"

    const/16 v5, 0x64

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 130
    new-instance v0, Lb/a/a/a/a/g/b;

    invoke-direct/range {v0 .. v5}, Lb/a/a/a/a/g/b;-><init>(Ljava/lang/String;IIII)V

    return-object v0
.end method

.method private f(Lorg/json/JSONObject;)Lb/a/a/a/a/g/p;
    .locals 7

    .prologue
    const/16 v4, 0x40

    .line 135
    const-string v0, "log_buffer_size"

    const v1, 0xfa00

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 138
    const-string v0, "max_chained_exception_depth"

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 141
    const-string v0, "max_custom_exception_events"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 144
    const-string v0, "max_custom_key_value_pairs"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 147
    const-string v0, "identifier_mask"

    const/16 v5, 0xff

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 150
    const-string v0, "send_session_without_crash"

    const/4 v6, 0x0

    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 154
    new-instance v0, Lb/a/a/a/a/g/p;

    invoke-direct/range {v0 .. v6}, Lb/a/a/a/a/g/p;-><init>(IIIIIZ)V

    return-object v0
.end method

.method private g(Lorg/json/JSONObject;)Lb/a/a/a/a/g/o;
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 160
    const-string v0, "title"

    const-string v1, "Send Crash Report?"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    const-string v0, "message"

    const-string v2, "Looks like we crashed! Please help us fix the problem by sending a crash report."

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    const-string v0, "send_button_title"

    const-string v3, "Send"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 169
    const-string v0, "show_cancel_button"

    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 172
    const-string v0, "cancel_button_title"

    const-string v5, "Don\'t Send"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 175
    const-string v0, "show_always_send_button"

    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 178
    const-string v0, "always_send_button_title"

    const-string v7, "Always Send"

    invoke-virtual {p1, v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 182
    new-instance v0, Lb/a/a/a/a/g/o;

    invoke-direct/range {v0 .. v7}, Lb/a/a/a/a/g/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method

.method private h(Lorg/json/JSONObject;)Lb/a/a/a/a/g/f;
    .locals 3

    .prologue
    .line 187
    const-string v0, "update_endpoint"

    sget-object v1, Lb/a/a/a/a/g/x;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    const-string v1, "update_suspend_duration"

    const/16 v2, 0xe10

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 194
    new-instance v2, Lb/a/a/a/a/g/f;

    invoke-direct {v2, v0, v1}, Lb/a/a/a/a/g/f;-><init>(Ljava/lang/String;I)V

    return-object v2
.end method


# virtual methods
.method public a(Lb/a/a/a/a/b/s;Lorg/json/JSONObject;)Lb/a/a/a/a/g/w;
    .locals 11

    .prologue
    .line 19
    const-string v0, "settings_version"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 21
    const-string v0, "cache_duration"

    const/16 v1, 0xe10

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 24
    const-string v0, "app"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/a/a/a/a/g/k;->b(Lorg/json/JSONObject;)Lb/a/a/a/a/g/e;

    move-result-object v3

    .line 26
    const-string v0, "session"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/a/a/a/a/g/k;->f(Lorg/json/JSONObject;)Lb/a/a/a/a/g/p;

    move-result-object v4

    .line 28
    const-string v0, "prompt"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/a/a/a/a/g/k;->g(Lorg/json/JSONObject;)Lb/a/a/a/a/g/o;

    move-result-object v5

    .line 30
    const-string v0, "features"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/a/a/a/a/g/k;->d(Lorg/json/JSONObject;)Lb/a/a/a/a/g/m;

    move-result-object v6

    .line 32
    const-string v0, "analytics"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/a/a/a/a/g/k;->e(Lorg/json/JSONObject;)Lb/a/a/a/a/g/b;

    move-result-object v7

    .line 34
    const-string v0, "beta"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/a/a/a/a/g/k;->h(Lorg/json/JSONObject;)Lb/a/a/a/a/g/f;

    move-result-object v8

    .line 37
    int-to-long v0, v10

    invoke-direct {p0, p1, v0, v1, p2}, Lb/a/a/a/a/g/k;->a(Lb/a/a/a/a/b/s;JLorg/json/JSONObject;)J

    move-result-wide v1

    .line 39
    new-instance v0, Lb/a/a/a/a/g/w;

    invoke-direct/range {v0 .. v10}, Lb/a/a/a/a/g/w;-><init>(JLb/a/a/a/a/g/e;Lb/a/a/a/a/g/p;Lb/a/a/a/a/g/o;Lb/a/a/a/a/g/m;Lb/a/a/a/a/g/b;Lb/a/a/a/a/g/f;II)V

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 61
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 62
    const-string v1, "features"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "collect_analytics"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    const-string v1, "analytics"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    return-object v0
.end method
