.class public final Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;
.super Ljava/lang/Object;
.source "GaplessInfoHolder.java"


# static fields
.field private static final GAPLESS_COMMENT_ID:Ljava/lang/String; = "iTunSMPB"

.field private static final GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public encoderDelay:I

.field public encoderPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})"

    .line 29
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 48
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 49
    return-void
.end method


# virtual methods
.method public hasGaplessInfo()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 101
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFromComment(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    const-string v5, "iTunSMPB"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v3

    .line 80
    :cond_1
    sget-object v5, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 81
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 83
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 84
    .local v0, "encoderDelay":I
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 85
    .local v1, "encoderPadding":I
    if-gtz v0, :cond_2

    if-lez v1, :cond_0

    .line 86
    :cond_2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 87
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 88
    goto :goto_0

    .line 90
    .end local v0    # "encoderDelay":I
    .end local v1    # "encoderPadding":I
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public setFromXingHeaderValue(I)Z
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 58
    shr-int/lit8 v0, p1, 0xc

    .line 59
    .local v0, "encoderDelay":I
    and-int/lit16 v1, p1, 0xfff

    .line 60
    .local v1, "encoderPadding":I
    if-gtz v0, :cond_0

    if-lez v1, :cond_1

    .line 61
    :cond_0
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 62
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 63
    const/4 v2, 0x1

    .line 65
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
