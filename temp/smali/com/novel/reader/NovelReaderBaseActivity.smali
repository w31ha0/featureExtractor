.class public Lcom/novel/reader/NovelReaderBaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "NovelReaderBaseActivity.java"


# instance fields
.field private readingDirection:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private setReadingDirection()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 19
    const-string v0, "ReadingDirections"

    invoke-static {v0, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/novel/reader/NovelReaderBaseActivity;->readingDirection:I

    .line 20
    iget v0, p0, Lcom/novel/reader/NovelReaderBaseActivity;->readingDirection:I

    if-nez v0, :cond_0

    .line 21
    invoke-virtual {p0, v1}, Lcom/novel/reader/NovelReaderBaseActivity;->setRequestedOrientation(I)V

    .line 27
    :goto_0
    return-void

    .line 22
    :cond_0
    iget v0, p0, Lcom/novel/reader/NovelReaderBaseActivity;->readingDirection:I

    if-ne v0, v1, :cond_1

    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/novel/reader/NovelReaderBaseActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/novel/reader/NovelReaderBaseActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onResume()V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 15
    invoke-direct {p0}, Lcom/novel/reader/NovelReaderBaseActivity;->setReadingDirection()V

    .line 16
    return-void
.end method
