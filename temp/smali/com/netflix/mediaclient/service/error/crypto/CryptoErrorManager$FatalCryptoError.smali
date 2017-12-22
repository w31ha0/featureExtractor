.class Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;
.super Ljava/lang/Object;
.source "CryptoErrorManager.java"


# static fields
.field private static final APP_STARTUP_TIME:Ljava/lang/String; = "appStartupTime"

.field private static final CAUSE:Ljava/lang/String; = "cause"

.field private static final SOURCE:Ljava/lang/String; = "src"

.field private static final TS:Ljava/lang/String; = "ts"

.field private static final UP:Ljava/lang/String; = "up"


# instance fields
.field appStartupTimeInMs:J

.field errorSource:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

.field howLongDeviceWasUpInMs:J

.field statusCode:Lcom/netflix/mediaclient/StatusCode;

.field timestamp:J


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;J)V
    .locals 3

    .prologue
    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    iput-object p1, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;->errorSource:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    .line 440
    iput-object p2, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;->statusCode:Lcom/netflix/mediaclient/StatusCode;

    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;->timestamp:J

    .line 442
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;->howLongDeviceWasUpInMs:J

    .line 443
    iput-wide p3, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;->appStartupTimeInMs:J

    .line 444
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    const-string/jumbo v0, "ts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;->timestamp:J

    .line 449
    const-string/jumbo v0, "up"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;->howLongDeviceWasUpInMs:J

    .line 450
    const-string/jumbo v0, "appStartupTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;->appStartupTimeInMs:J

    .line 451
    const-string/jumbo v0, "src"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;->errorSource:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    .line 452
    const-string/jumbo v0, "cause"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/StatusCode;->getStatusCodeByValue(I)Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;->statusCode:Lcom/netflix/mediaclient/StatusCode;

    .line 453
    return-void
.end method


# virtual methods
.method belongToApplicationInstance(J)Z
    .locals 3

    .prologue
    .line 476
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;->appStartupTimeInMs:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getDeviceBootTimeInMs()J
    .locals 4

    .prologue
    .line 515
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;->timestamp:J

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;->howLongDeviceWasUpInMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method isValid()Z
    .locals 4

    .prologue
    .line 507
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;->timestamp:J

    invoke-static {}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->access$400()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method toJson()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 457
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 458
    const-string/jumbo v1, "ts"

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;->timestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 459
    const-string/jumbo v1, "appStartupTime"

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;->appStartupTimeInMs:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 460
    const-string/jumbo v1, "up"

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;->howLongDeviceWasUpInMs:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 461
    const-string/jumbo v1, "src"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;->errorSource:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 462
    const-string/jumbo v1, "cause"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;->statusCode:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 464
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FatalCryptoError{timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;->timestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", howLongDeviceWasUpInMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;->howLongDeviceWasUpInMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", appStartupTimeInMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;->appStartupTimeInMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", errorSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;->errorSource:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;->statusCode:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method wasDeviceRestartedSinceErrorOccured(J)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 486
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 489
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;->belongToApplicationInstance(J)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v1

    .line 499
    :cond_0
    :goto_0
    return v0

    .line 495
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;->howLongDeviceWasUpInMs:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 499
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;->getDeviceBootTimeInMs()J

    move-result-wide v2

    invoke-static {}, Lcom/netflix/mediaclient/util/TimeUtils;->getDeviceCurrentBootTimeInMs()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
