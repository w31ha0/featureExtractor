.class public final Lcom/netflix/mediaclient/util/IntentUtils;
.super Ljava/lang/Object;
.source "IntentUtils.java"


# static fields
.field public static final INTENT_CATEGORY_UI:Ljava/lang/String; = "LocalIntentNflxUi"

.field private static final TAG:Ljava/lang/String;

.field public static final USER_HIGH_PRIORITY:I = 0x3e7

.field public static final USER_LOW_PRIORITY:I = -0x3e7


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/netflix/mediaclient/util/IntentUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/util/IntentUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntentActionOrNull(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 276
    :goto_0
    if-nez v0, :cond_0

    .line 281
    :cond_0
    return-object v0

    .line 275
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getSafePriority(I)I
    .locals 1

    .prologue
    .line 230
    .line 231
    const/16 v0, -0x3e8

    if-ge p0, v0, :cond_1

    .line 232
    const/16 p0, -0x3e7

    .line 236
    :cond_0
    :goto_0
    return p0

    .line 233
    :cond_1
    const/16 v0, 0x3e8

    if-le p0, v0, :cond_0

    .line 234
    const/16 p0, 0x3e7

    goto :goto_0
.end method

.method public static varargs registerSafelyBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 183
    if-nez p0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    if-nez p1, :cond_1

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Receiver is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_1
    if-eqz p4, :cond_2

    array-length v2, p4

    if-ge v2, v0, :cond_3

    .line 192
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No actions!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_3
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 197
    if-eqz p2, :cond_4

    .line 198
    invoke-virtual {v3, p2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 200
    :cond_4
    array-length v4, p4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_6

    aget-object v5, p4, v2

    .line 201
    invoke-static {v5}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 202
    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 206
    :cond_6
    invoke-static {p3}, Lcom/netflix/mediaclient/util/IntentUtils;->getSafePriority(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 210
    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_1
    return v0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    sget-object v2, Lcom/netflix/mediaclient/util/IntentUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to register "

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 214
    goto :goto_1
.end method

.method public static varargs registerSafelyBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 165
    const/16 v0, 0x3e7

    invoke-static {p0, p1, p2, v0, p3}, Lcom/netflix/mediaclient/util/IntentUtils;->registerSafelyBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static registerSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Z
    .locals 3

    .prologue
    .line 100
    if-nez p0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    if-nez p1, :cond_1

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Receiver is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1
    if-nez p2, :cond_2

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No filter!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_2
    const/4 v0, 0x1

    .line 114
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    sget-object v1, Lcom/netflix/mediaclient/util/IntentUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to register "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs registerSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 70
    if-eqz p4, :cond_0

    array-length v0, p4

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No actions!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 76
    if-eqz p2, :cond_2

    .line 77
    invoke-virtual {v1, p2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 80
    :cond_2
    array-length v2, p4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_4

    aget-object v3, p4, v0

    .line 81
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 82
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_4
    invoke-static {p0, p1, v1}, Lcom/netflix/mediaclient/util/IntentUtils;->registerSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Z

    move-result v0

    return v0
.end method

.method public static varargs registerSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x3e7

    invoke-static {p0, p1, p2, v0, p3}, Lcom/netflix/mediaclient/util/IntentUtils;->registerSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static unregisterSafelyBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 249
    if-nez p0, :cond_0

    .line 250
    sget-object v1, Lcom/netflix/mediaclient/util/IntentUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Context is null"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_0
    return v0

    .line 254
    :cond_0
    if-nez p1, :cond_1

    .line 255
    sget-object v1, Lcom/netflix/mediaclient/util/IntentUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Receiver is null"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    const/4 v0, 0x1

    goto :goto_0

    .line 263
    :catch_0
    move-exception v1

    .line 264
    sget-object v2, Lcom/netflix/mediaclient/util/IntentUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to unregister "

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static unregisterSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 134
    if-nez p0, :cond_0

    .line 135
    sget-object v1, Lcom/netflix/mediaclient/util/IntentUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Context is null"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    return v0

    .line 139
    :cond_0
    if-nez p1, :cond_1

    .line 140
    sget-object v1, Lcom/netflix/mediaclient/util/IntentUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Receiver is null"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    :cond_1
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    const/4 v0, 0x1

    goto :goto_0

    .line 148
    :catch_0
    move-exception v1

    .line 149
    sget-object v2, Lcom/netflix/mediaclient/util/IntentUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to unregister "

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
