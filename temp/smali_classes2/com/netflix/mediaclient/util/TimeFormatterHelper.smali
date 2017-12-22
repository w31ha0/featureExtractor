.class public Lcom/netflix/mediaclient/util/TimeFormatterHelper;
.super Ljava/lang/Object;
.source "TimeFormatterHelper.java"


# static fields
.field private static final HOUR_FORMAT:Ljava/lang/String; = "%d:%02d:%02d"

.field private static final MINUTE_FORMAT:Ljava/lang/String; = "%02d:%02d"

.field private static final TAG:Ljava/lang/String; = "TimeFormatterHelper"


# instance fields
.field private final formatBuilder:Ljava/lang/StringBuilder;

.field private final formatter:Ljava/util/Formatter;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/util/TimeFormatterHelper;->formatBuilder:Ljava/lang/StringBuilder;

    .line 27
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/netflix/mediaclient/util/TimeFormatterHelper;->formatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/util/TimeFormatterHelper;->formatter:Ljava/util/Formatter;

    .line 36
    return-void
.end method


# virtual methods
.method public getStringForMs(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    div-int/lit16 v0, p1, 0x3e8

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/util/TimeFormatterHelper;->getStringForSeconds(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringForSeconds(I)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/util/TimeFormatterHelper;->formatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 47
    if-gez p1, :cond_0

    .line 48
    const-string/jumbo v0, "TimeFormatterHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received negative time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/util/TimeFormatterHelper;->formatter:Ljava/util/Formatter;

    const-string/jumbo v1, "%02d:%02d"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    .line 52
    :cond_0
    rem-int/lit8 v0, p1, 0x3c

    .line 53
    div-int/lit8 v1, p1, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    .line 54
    div-int/lit16 v2, p1, 0xe10

    .line 56
    if-lez v2, :cond_1

    .line 57
    iget-object v3, p0, Lcom/netflix/mediaclient/util/TimeFormatterHelper;->formatter:Ljava/util/Formatter;

    const-string/jumbo v4, "%d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v3, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/util/TimeFormatterHelper;->formatter:Ljava/util/Formatter;

    const-string/jumbo v3, "%02d:%02d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-virtual {v2, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
