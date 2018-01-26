.class public Lorg/acra/sender/HttpPostSender;
.super Ljava/lang/Object;
.source "HttpPostSender.java"

# interfaces
.implements Lorg/acra/sender/ReportSender;


# instance fields
.field private mFormUri:Landroid/net/Uri;

.field private mMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/acra/ReportField;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "formUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lorg/acra/ReportField;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "mapping":Ljava/util/Map;, "Ljava/util/Map<Lorg/acra/ReportField;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v0, p0, Lorg/acra/sender/HttpPostSender;->mFormUri:Landroid/net/Uri;

    .line 75
    iput-object v0, p0, Lorg/acra/sender/HttpPostSender;->mMapping:Ljava/util/Map;

    .line 91
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/sender/HttpPostSender;->mFormUri:Landroid/net/Uri;

    .line 92
    iput-object p2, p0, Lorg/acra/sender/HttpPostSender;->mMapping:Ljava/util/Map;

    .line 93
    return-void
.end method

.method private remap(Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/acra/ReportField;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "report":Ljava/util/Map;, "Ljava/util/Map<Lorg/acra/ReportField;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 113
    .local v3, "finalReport":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/annotation/ReportsCrashes;

    move-result-object v6

    invoke-interface {v6}, Lorg/acra/annotation/ReportsCrashes;->customReportContent()[Lorg/acra/ReportField;

    move-result-object v2

    .line 114
    .local v2, "fields":[Lorg/acra/ReportField;
    array-length v6, v2

    if-nez v6, :cond_0

    .line 115
    sget-object v2, Lorg/acra/ACRA;->DEFAULT_REPORT_FIELDS:[Lorg/acra/ReportField;

    .line 117
    :cond_0
    move-object v0, v2

    .local v0, "arr$":[Lorg/acra/ReportField;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v1, v0, v4

    .line 118
    .local v1, "field":Lorg/acra/ReportField;
    iget-object v6, p0, Lorg/acra/sender/HttpPostSender;->mMapping:Ljava/util/Map;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/acra/sender/HttpPostSender;->mMapping:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    .line 119
    :cond_1
    invoke-virtual {v1}, Lorg/acra/ReportField;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 121
    :cond_2
    iget-object v6, p0, Lorg/acra/sender/HttpPostSender;->mMapping:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 124
    .end local v1    # "field":Lorg/acra/ReportField;
    :cond_3
    return-object v3
.end method


# virtual methods
.method public send(Lorg/acra/CrashReportData;)V
    .locals 6
    .param p1, "report"    # Lorg/acra/CrashReportData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/acra/sender/ReportSenderException;
        }
    .end annotation

    .prologue
    .line 100
    :try_start_0
    invoke-direct {p0, p1}, Lorg/acra/sender/HttpPostSender;->remap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 101
    .local v1, "finalReport":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lorg/acra/sender/HttpPostSender;->mFormUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 102
    .local v2, "reportUrl":Ljava/net/URL;
    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/annotation/ReportsCrashes;

    move-result-object v3

    invoke-interface {v3}, Lorg/acra/annotation/ReportsCrashes;->formUriBasicAuthLogin()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/annotation/ReportsCrashes;

    move-result-object v4

    invoke-interface {v4}, Lorg/acra/annotation/ReportsCrashes;->formUriBasicAuthPassword()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lorg/acra/util/HttpUtils;->doPost(Ljava/util/Map;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    return-void

    .line 105
    .end local v1    # "finalReport":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "reportUrl":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/acra/sender/ReportSenderException;

    const-string v4, "Error while sending report to Http Post Form."

    invoke-direct {v3, v4, v0}, Lorg/acra/sender/ReportSenderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
