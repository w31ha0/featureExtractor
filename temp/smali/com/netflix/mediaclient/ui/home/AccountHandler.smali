.class public Lcom/netflix/mediaclient/ui/home/AccountHandler;
.super Ljava/lang/Object;
.source "AccountHandler.java"


# static fields
.field public static final ACCOUNT_URL:Ljava/lang/String; = "https://www.netflix.com/youraccount"

.field public static final AUTOLOGIN_TOKEN_EXPIRATION_IN_MS:J = 0x36ee80L

.field public static final AUTOLOGIN_TOKEN_TIMEOUT_IN_MS:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "AccountHandler"

.field public static final TOKEN_PARAMETER_NAME:Ljava/lang/String; = "nftoken"


# instance fields
.field private mCompleted:Z

.field private final mContext:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/AccountHandler;->mContext:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/home/AccountHandler;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/AccountHandler;->mContext:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method

.method public static createLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 80
    :try_start_0
    const-string/jumbo v0, "nftoken"

    const-string/jumbo v2, "UTF-8"

    .line 83
    invoke-static {p1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    const-string/jumbo v2, "should not happen"

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized handle(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "https://www.netflix.com/youraccount"

    invoke-virtual {p0, p1, p2, v0}, Lcom/netflix/mediaclient/ui/home/AccountHandler;->handle(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handle(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/AccountHandler;->mCompleted:Z

    if-eqz v0, :cond_0

    .line 41
    const-string/jumbo v0, "AccountHandler"

    const-string/jumbo v1, "Account handler already executed because of timeout. Do nothing..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :goto_0
    monitor-exit p0

    return-void

    .line 44
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/AccountHandler;->mCompleted:Z

    .line 47
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-static {p3, p1}, Lcom/netflix/mediaclient/ui/home/AccountHandler;->createLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    new-instance v1, Lcom/netflix/mediaclient/util/LaunchBrowser;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/AccountHandler;->mContext:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v1, v2, v0}, Lcom/netflix/mediaclient/util/LaunchBrowser;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/AccountHandler;->mContext:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 61
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/AccountHandler;->mContext:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/home/AccountHandler$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/home/AccountHandler$1;-><init>(Lcom/netflix/mediaclient/ui/home/AccountHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
