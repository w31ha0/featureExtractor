.class public Lcom/mopub/mobileads/AdAlertReporter;
.super Ljava/lang/Object;
.source "AdAlertReporter.java"


# static fields
.field private static final BODY_SEPARATOR:Ljava/lang/String; = "\n=================\n"

.field private static final DATE_FORMAT_PATTERN:Ljava/lang/String; = "M/d/yy hh:mm:ss a z"

.field private static final EMAIL_RECIPIENT:Ljava/lang/String; = "creative-review@mopub.com"

.field private static final IMAGE_QUALITY:I = 0x19


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDateString:Ljava/lang/String;

.field private mEmailIntent:Landroid/content/Intent;

.field private mParameters:Ljava/lang/String;

.field private mResponse:Ljava/lang/String;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/mopub/common/AdReport;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "adReport"    # Lcom/mopub/common/AdReport;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/mopub/mobileads/AdAlertReporter;->mView:Landroid/view/View;

    .line 37
    iput-object p1, p0, Lcom/mopub/mobileads/AdAlertReporter;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "M/d/yy hh:mm:ss a z"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 40
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-static {}, Lcom/mopub/common/util/DateAndTime;->now()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mopub/mobileads/AdAlertReporter;->mDateString:Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Lcom/mopub/mobileads/AdAlertReporter;->initEmailIntent()V

    .line 43
    invoke-direct {p0}, Lcom/mopub/mobileads/AdAlertReporter;->takeScreenShot()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 44
    .local v1, "screenShot":Landroid/graphics/Bitmap;
    invoke-direct {p0, v1}, Lcom/mopub/mobileads/AdAlertReporter;->convertBitmapInWEBPToBase64EncodedString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "screenShotString":Ljava/lang/String;
    const-string v3, ""

    iput-object v3, p0, Lcom/mopub/mobileads/AdAlertReporter;->mParameters:Ljava/lang/String;

    .line 46
    const-string v3, ""

    iput-object v3, p0, Lcom/mopub/mobileads/AdAlertReporter;->mResponse:Ljava/lang/String;

    .line 47
    if-eqz p3, :cond_0

    .line 48
    invoke-virtual {p3}, Lcom/mopub/common/AdReport;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mopub/mobileads/AdAlertReporter;->mParameters:Ljava/lang/String;

    .line 49
    invoke-virtual {p3}, Lcom/mopub/common/AdReport;->getResponseString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mopub/mobileads/AdAlertReporter;->mResponse:Ljava/lang/String;

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/mopub/mobileads/AdAlertReporter;->addEmailSubject()V

    .line 53
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mopub/mobileads/AdAlertReporter;->mParameters:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/mopub/mobileads/AdAlertReporter;->mResponse:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    invoke-direct {p0, v3}, Lcom/mopub/mobileads/AdAlertReporter;->addEmailBody([Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method private varargs addEmailBody([Ljava/lang/String;)V
    .locals 5
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .local v0, "body":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 115
    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 116
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    .line 118
    const-string v2, "\n=================\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    :cond_1
    iget-object v2, p0, Lcom/mopub/mobileads/AdAlertReporter;->mEmailIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    return-void
.end method

.method private addEmailSubject()V
    .locals 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->mEmailIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New creative violation report - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/AdAlertReporter;->mDateString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    return-void
.end method

.method private convertBitmapInWEBPToBase64EncodedString(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 93
    const/4 v2, 0x0

    .line 94
    .local v2, "result":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 96
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 97
    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x19

    invoke-virtual {p1, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 98
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 99
    .local v1, "bytes":[B
    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 104
    .end local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "bytes":[B
    :cond_0
    :goto_0
    return-object v2

    .line 100
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private initEmailIntent()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->mEmailIntent:Landroid/content/Intent;

    .line 69
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->mEmailIntent:Landroid/content/Intent;

    const-string v1, "mailto:creative-review@mopub.com"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 70
    return-void
.end method

.method private takeScreenShot()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 73
    iget-object v4, p0, Lcom/mopub/mobileads/AdAlertReporter;->mView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/mopub/mobileads/AdAlertReporter;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-object v0

    .line 77
    :cond_1
    iget-object v4, p0, Lcom/mopub/mobileads/AdAlertReporter;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 78
    .local v2, "rootView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v3

    .line 79
    .local v3, "wasDrawingCacheEnabled":Z
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 81
    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 82
    .local v1, "drawingCache":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 86
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 87
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method getEmailIntent()Landroid/content/Intent;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->mEmailIntent:Landroid/content/Intent;

    return-object v0
.end method

.method getParameters()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->mParameters:Ljava/lang/String;

    return-object v0
.end method

.method getResponse()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->mResponse:Ljava/lang/String;

    return-object v0
.end method

.method public send()V
    .locals 4

    .prologue
    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/mopub/mobileads/AdAlertReporter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mopub/mobileads/AdAlertReporter;->mEmailIntent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/mopub/common/util/Intents;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/mopub/exceptions/IntentNotResolvableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Lcom/mopub/exceptions/IntentNotResolvableException;
    iget-object v1, p0, Lcom/mopub/mobileads/AdAlertReporter;->mContext:Landroid/content/Context;

    const-string v2, "No email client available"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
