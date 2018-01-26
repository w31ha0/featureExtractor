.class public Lorg/acra/CrashReportData;
.super Ljava/util/EnumMap;
.source "CrashReportData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap",
        "<",
        "Lorg/acra/ReportField;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONTINUE:I = 0x3

.field private static final IGNORE:I = 0x5

.field private static final KEY_DONE:I = 0x4

.field private static final NONE:I = 0x0

.field private static final PROP_DTD_NAME:Ljava/lang/String; = "http://java.sun.com/dtd/properties.dtd"

.field private static final SLASH:I = 0x1

.field private static final UNICODE:I = 0x2

.field private static lineSeparator:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x3912d07a70363e98L


# instance fields
.field protected defaults:Lorg/acra/CrashReportData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 516
    const-string v0, "\n"

    sput-object v0, Lorg/acra/CrashReportData;->lineSeparator:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    const-class v0, Lorg/acra/ReportField;

    invoke-direct {p0, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/acra/CrashReportData;)V
    .locals 1
    .param p1, "properties"    # Lorg/acra/CrashReportData;

    .prologue
    .line 88
    const-class v0, Lorg/acra/ReportField;

    invoke-direct {p0, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 89
    iput-object p1, p0, Lorg/acra/CrashReportData;->defaults:Lorg/acra/CrashReportData;

    .line 90
    return-void
.end method

.method private dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "key"    # Z

    .prologue
    const/16 v5, 0x20

    .line 93
    const/4 v2, 0x0

    .line 94
    .local v2, "i":I
    if-nez p3, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_0

    .line 95
    const-string v4, "\\ "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    add-int/lit8 v2, v2, 0x1

    .line 99
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 100
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 101
    .local v0, "ch":C
    packed-switch v0, :pswitch_data_0

    .line 115
    :pswitch_0
    const-string v4, "\\#!=:"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_1

    if-eqz p3, :cond_2

    if-ne v0, v5, :cond_2

    .line 116
    :cond_1
    const/16 v4, 0x5c

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    :cond_2
    if-lt v0, v5, :cond_3

    const/16 v4, 0x7e

    if-gt v0, v4, :cond_3

    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    :pswitch_1
    const-string v4, "\\t"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 106
    :pswitch_2
    const-string v4, "\\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 109
    :pswitch_3
    const-string v4, "\\f"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 112
    :pswitch_4
    const-string v4, "\\r"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 121
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "hex":Ljava/lang/String;
    const-string v4, "\\u"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    if-ge v3, v4, :cond_4

    .line 124
    const-string v4, "0"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 126
    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 130
    .end local v0    # "ch":C
    .end local v1    # "hex":Ljava/lang/String;
    .end local v3    # "j":I
    :cond_5
    return-void

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private isEbcdic(Ljava/io/BufferedInputStream;)Z
    .locals 3
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 269
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    int-to-byte v0, v2

    .local v0, "b":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 270
    const/16 v2, 0x23

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    const/16 v2, 0x3d

    if-ne v0, v2, :cond_2

    .line 282
    :cond_1
    :goto_0
    return v1

    .line 273
    :cond_2
    const/16 v2, 0x15

    if-ne v0, v2, :cond_0

    .line 274
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private keys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lorg/acra/ReportField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 475
    invoke-virtual {p0}, Lorg/acra/CrashReportData;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method private substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 786
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "&apos;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "&quot;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getProperty(Lorg/acra/ReportField;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Lorg/acra/ReportField;

    .prologue
    .line 142
    invoke-super {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 143
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/acra/CrashReportData;->defaults:Lorg/acra/CrashReportData;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lorg/acra/CrashReportData;->defaults:Lorg/acra/CrashReportData;

    invoke-virtual {v1, p1}, Lorg/acra/CrashReportData;->getProperty(Lorg/acra/ReportField;)Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_0
    return-object v0
.end method

.method public getProperty(Lorg/acra/ReportField;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Lorg/acra/ReportField;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-super {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    .local v0, "property":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/acra/CrashReportData;->defaults:Lorg/acra/CrashReportData;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lorg/acra/CrashReportData;->defaults:Lorg/acra/CrashReportData;

    invoke-virtual {v1, p1}, Lorg/acra/CrashReportData;->getProperty(Lorg/acra/ReportField;)Ljava/lang/String;

    move-result-object v0

    .line 166
    :cond_0
    if-nez v0, :cond_1

    .line 169
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_1
    move-object p2, v0

    goto :goto_0
.end method

.method public list(Ljava/io/PrintStream;)V
    .locals 8
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    const/4 v7, 0x0

    .line 181
    if-nez p1, :cond_0

    .line 182
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x50

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 185
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lorg/acra/CrashReportData;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 186
    .local v3, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/acra/ReportField;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 187
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/acra/ReportField;

    .line 188
    .local v2, "key":Lorg/acra/ReportField;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    invoke-super {p0, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 191
    .local v4, "property":Ljava/lang/String;
    iget-object v1, p0, Lorg/acra/CrashReportData;->defaults:Lorg/acra/CrashReportData;

    .line 192
    .local v1, "def":Lorg/acra/CrashReportData;
    :goto_1
    if-nez v4, :cond_1

    .line 193
    invoke-virtual {v1, v2}, Lorg/acra/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "property":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 194
    .restart local v4    # "property":Ljava/lang/String;
    iget-object v1, v1, Lorg/acra/CrashReportData;->defaults:Lorg/acra/CrashReportData;

    goto :goto_1

    .line 196
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x28

    if-le v5, v6, :cond_2

    .line 197
    const/16 v5, 0x25

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string v5, "..."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 200
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 205
    .end local v1    # "def":Lorg/acra/CrashReportData;
    .end local v2    # "key":Lorg/acra/ReportField;
    .end local v4    # "property":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public list(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v7, 0x0

    .line 216
    if-nez p1, :cond_0

    .line 217
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x50

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 220
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lorg/acra/CrashReportData;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 221
    .local v3, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/acra/ReportField;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 222
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/acra/ReportField;

    .line 223
    .local v2, "key":Lorg/acra/ReportField;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    invoke-super {p0, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 226
    .local v4, "property":Ljava/lang/String;
    iget-object v1, p0, Lorg/acra/CrashReportData;->defaults:Lorg/acra/CrashReportData;

    .line 227
    .local v1, "def":Lorg/acra/CrashReportData;
    :goto_1
    if-nez v4, :cond_1

    .line 228
    invoke-virtual {v1, v2}, Lorg/acra/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "property":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 229
    .restart local v4    # "property":Ljava/lang/String;
    iget-object v1, v1, Lorg/acra/CrashReportData;->defaults:Lorg/acra/CrashReportData;

    goto :goto_1

    .line 231
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x28

    if-le v5, v6, :cond_2

    .line 232
    const/16 v5, 0x25

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string v5, "..."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 235
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 240
    .end local v1    # "def":Lorg/acra/CrashReportData;
    .end local v2    # "key":Lorg/acra/ReportField;
    .end local v4    # "property":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public declared-synchronized load(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    monitor-enter p0

    if-nez p1, :cond_0

    .line 253
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 255
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 256
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 257
    invoke-direct {p0, v0}, Lorg/acra/CrashReportData;->isEbcdic(Ljava/io/BufferedInputStream;)Z

    move-result v1

    .line 258
    .local v1, "isEbcdic":Z
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    .line 260
    if-nez v1, :cond_1

    .line 261
    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "ISO8859-1"

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/acra/CrashReportData;->load(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    :goto_0
    monitor-exit p0

    return-void

    .line 263
    :cond_1
    :try_start_2
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v2}, Lorg/acra/CrashReportData;->load(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized load(Ljava/io/Reader;)V
    .locals 21
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    monitor-enter p0

    const/4 v11, 0x0

    .local v11, "mode":I
    const/16 v17, 0x0

    .local v17, "unicode":I
    const/4 v5, 0x0

    .line 315
    .local v5, "count":I
    const/16 v19, 0x28

    :try_start_0
    move/from16 v0, v19

    new-array v4, v0, [C

    .line 316
    .local v4, "buf":[C
    const/4 v14, 0x0

    .local v14, "offset":I
    const/4 v10, -0x1

    .line 317
    .local v10, "keyLength":I
    const/4 v7, 0x1

    .line 318
    .local v7, "firstChar":Z
    new-instance v3, Ljava/io/BufferedReader;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v3, "br":Ljava/io/BufferedReader;
    move v15, v14

    .line 321
    .end local v14    # "offset":I
    .local v15, "offset":I
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    move-result v8

    .line 322
    .local v8, "intVal":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_1

    .line 456
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v11, v0, :cond_14

    const/16 v19, 0x4

    move/from16 v0, v19

    if-gt v5, v0, :cond_14

    .line 458
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "luni.08"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v4    # "buf":[C
    .end local v7    # "firstChar":Z
    .end local v8    # "intVal":I
    .end local v10    # "keyLength":I
    .end local v15    # "offset":I
    :catchall_0
    move-exception v19

    monitor-exit p0

    throw v19

    .line 324
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "buf":[C
    .restart local v7    # "firstChar":Z
    .restart local v8    # "intVal":I
    .restart local v10    # "keyLength":I
    .restart local v15    # "offset":I
    :cond_1
    int-to-char v13, v8

    .line 326
    .local v13, "nextChar":C
    :try_start_1
    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v15, v0, :cond_2

    .line 327
    array-length v0, v4

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    new-array v12, v0, [C

    .line 328
    .local v12, "newBuf":[C
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v4, v0, v12, v1, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    move-object v4, v12

    .line 331
    .end local v12    # "newBuf":[C
    :cond_2
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v11, v0, :cond_6

    .line 332
    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-static {v13, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 333
    .local v6, "digit":I
    if-ltz v6, :cond_4

    .line 334
    shl-int/lit8 v19, v17, 0x4

    add-int v17, v19, v6

    .line 335
    add-int/lit8 v5, v5, 0x1

    const/16 v19, 0x4

    move/from16 v0, v19

    if-lt v5, v0, :cond_0

    .line 342
    :cond_3
    const/4 v11, 0x0

    .line 343
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v19, v0

    aput-char v19, v4, v15

    .line 344
    const/16 v19, 0xa

    move/from16 v0, v19

    if-eq v13, v0, :cond_5

    const/16 v19, 0x85

    move/from16 v0, v19

    if-eq v13, v0, :cond_5

    move v15, v14

    .line 345
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    goto :goto_0

    .line 338
    :cond_4
    const/16 v19, 0x4

    move/from16 v0, v19

    if-gt v5, v0, :cond_3

    .line 340
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "luni.09"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    :cond_5
    move v15, v14

    .line 348
    .end local v6    # "digit":I
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    :cond_6
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_9

    .line 349
    const/4 v11, 0x0

    .line 350
    sparse-switch v13, :sswitch_data_0

    .line 449
    :cond_7
    :goto_1
    const/4 v7, 0x0

    .line 450
    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v11, v0, :cond_8

    .line 451
    move v10, v15

    .line 452
    const/4 v11, 0x0

    .line 454
    :cond_8
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    aput-char v13, v4, v15

    move v15, v14

    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    goto/16 :goto_0

    .line 352
    :sswitch_0
    const/4 v11, 0x3

    .line 353
    goto/16 :goto_0

    .line 356
    :sswitch_1
    const/4 v11, 0x5

    .line 357
    goto/16 :goto_0

    .line 359
    :sswitch_2
    const/16 v13, 0x8

    .line 360
    goto :goto_1

    .line 362
    :sswitch_3
    const/16 v13, 0xc

    .line 363
    goto :goto_1

    .line 365
    :sswitch_4
    const/16 v13, 0xa

    .line 366
    goto :goto_1

    .line 368
    :sswitch_5
    const/16 v13, 0xd

    .line 369
    goto :goto_1

    .line 371
    :sswitch_6
    const/16 v13, 0x9

    .line 372
    goto :goto_1

    .line 374
    :sswitch_7
    const/4 v11, 0x2

    .line 375
    const/4 v5, 0x0

    move/from16 v17, v5

    .line 376
    goto/16 :goto_0

    .line 379
    :cond_9
    sparse-switch v13, :sswitch_data_1

    .line 432
    :cond_a
    invoke-static {v13}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 433
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v11, v0, :cond_b

    .line 434
    const/4 v11, 0x5

    .line 437
    :cond_b
    if-eqz v15, :cond_0

    if-eq v15, v10, :cond_0

    const/16 v19, 0x5

    move/from16 v0, v19

    if-eq v11, v0, :cond_0

    .line 440
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_12

    .line 441
    const/4 v11, 0x4

    .line 442
    goto/16 :goto_0

    .line 382
    :sswitch_8
    if-eqz v7, :cond_a

    .line 384
    :cond_c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    move-result v8

    .line 385
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v8, v0, :cond_0

    .line 387
    int-to-char v13, v8

    .line 390
    const/16 v19, 0xd

    move/from16 v0, v19

    if-eq v13, v0, :cond_0

    const/16 v19, 0xa

    move/from16 v0, v19

    if-eq v13, v0, :cond_0

    const/16 v19, 0x85

    move/from16 v0, v19

    if-ne v13, v0, :cond_c

    goto/16 :goto_0

    .line 398
    :sswitch_9
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v11, v0, :cond_d

    .line 399
    const/4 v11, 0x5

    .line 400
    goto/16 :goto_0

    .line 405
    :cond_d
    :sswitch_a
    const/4 v11, 0x0

    .line 406
    const/4 v7, 0x1

    .line 407
    if-gtz v15, :cond_e

    if-nez v15, :cond_10

    if-nez v10, :cond_10

    .line 408
    :cond_e
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_f

    .line 409
    move v10, v15

    .line 411
    :cond_f
    new-instance v16, Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-direct {v0, v4, v1, v15}, Ljava/lang/String;-><init>([CII)V

    .line 412
    .local v16, "temp":Ljava/lang/String;
    const-class v19, Lorg/acra/ReportField;

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v19

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    .end local v16    # "temp":Ljava/lang/String;
    :cond_10
    const/4 v10, -0x1

    .line 415
    const/4 v14, 0x0

    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    move v15, v14

    .line 416
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    goto/16 :goto_0

    .line 418
    :sswitch_b
    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v11, v0, :cond_11

    .line 419
    move v10, v15

    .line 421
    :cond_11
    const/4 v11, 0x1

    .line 422
    goto/16 :goto_0

    .line 425
    :sswitch_c
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_a

    .line 426
    const/4 v11, 0x0

    .line 427
    move v10, v15

    .line 428
    goto/16 :goto_0

    .line 445
    :cond_12
    const/16 v19, 0x5

    move/from16 v0, v19

    if-eq v11, v0, :cond_13

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v11, v0, :cond_7

    .line 446
    :cond_13
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 460
    .end local v13    # "nextChar":C
    :cond_14
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_15

    if-lez v15, :cond_15

    .line 461
    move v10, v15

    .line 463
    :cond_15
    if-ltz v10, :cond_17

    .line 464
    new-instance v16, Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-direct {v0, v4, v1, v15}, Ljava/lang/String;-><init>([CII)V

    .line 465
    .restart local v16    # "temp":Ljava/lang/String;
    const-class v19, Lorg/acra/ReportField;

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v9

    check-cast v9, Lorg/acra/ReportField;

    .line 466
    .local v9, "key":Lorg/acra/ReportField;
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 467
    .local v18, "value":Ljava/lang/String;
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_16

    .line 468
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\u0000"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 470
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    .end local v9    # "key":Lorg/acra/ReportField;
    .end local v16    # "temp":Ljava/lang/String;
    .end local v18    # "value":Ljava/lang/String;
    :cond_17
    monitor-exit p0

    return-void

    .line 350
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xd -> :sswitch_0
        0x62 -> :sswitch_2
        0x66 -> :sswitch_3
        0x6e -> :sswitch_4
        0x72 -> :sswitch_5
        0x74 -> :sswitch_6
        0x75 -> :sswitch_7
        0x85 -> :sswitch_1
    .end sparse-switch

    .line 379
    :sswitch_data_1
    .sparse-switch
        0xa -> :sswitch_9
        0xd -> :sswitch_a
        0x21 -> :sswitch_8
        0x23 -> :sswitch_8
        0x3a -> :sswitch_c
        0x3d -> :sswitch_c
        0x5c -> :sswitch_b
        0x85 -> :sswitch_a
    .end sparse-switch
.end method

.method public save(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 497
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/acra/CrashReportData;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :goto_0
    return-void

    .line 498
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setProperty(Lorg/acra/ReportField;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Lorg/acra/ReportField;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 513
    invoke-virtual {p0, p1, p2}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized store(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 534
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0xc8

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 535
    .local v0, "buffer":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string v5, "ISO8859_1"

    invoke-direct {v4, p1, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 536
    .local v4, "writer":Ljava/io/OutputStreamWriter;
    if-eqz p2, :cond_0

    .line 537
    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v4, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 539
    sget-object v5, Lorg/acra/CrashReportData;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 542
    :cond_0
    invoke-virtual {p0}, Lorg/acra/CrashReportData;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 543
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/acra/ReportField;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/acra/ReportField;

    invoke-virtual {v5}, Lorg/acra/ReportField;->toString()Ljava/lang/String;

    move-result-object v3

    .line 544
    .local v3, "key":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-direct {p0, v0, v3, v5}, Lorg/acra/CrashReportData;->dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 545
    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 546
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {p0, v0, v5, v6}, Lorg/acra/CrashReportData;->dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 547
    sget-object v5, Lorg/acra/CrashReportData;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 549
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 534
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/acra/ReportField;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "writer":Ljava/io/OutputStreamWriter;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 551
    .restart local v0    # "buffer":Ljava/lang/StringBuilder;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "writer":Ljava/io/OutputStreamWriter;
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 552
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized store(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 6
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 568
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0xc8

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 569
    .local v0, "buffer":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_0

    .line 570
    const-string v4, "#"

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 572
    sget-object v4, Lorg/acra/CrashReportData;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 575
    :cond_0
    invoke-virtual {p0}, Lorg/acra/CrashReportData;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 576
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/acra/ReportField;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/acra/ReportField;

    invoke-virtual {v4}, Lorg/acra/ReportField;->toString()Ljava/lang/String;

    move-result-object v3

    .line 577
    .local v3, "key":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-direct {p0, v0, v3, v4}, Lorg/acra/CrashReportData;->dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 578
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 579
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {p0, v0, v4, v5}, Lorg/acra/CrashReportData;->dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 580
    sget-object v4, Lorg/acra/CrashReportData;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 582
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 568
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/acra/ReportField;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 584
    .restart local v0    # "buffer":Ljava/lang/StringBuilder;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 585
    monitor-exit p0

    return-void
.end method

.method public storeToXML(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 700
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, p2, v0}, Lorg/acra/CrashReportData;->storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    return-void
.end method

.method public declared-synchronized storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 727
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 728
    :cond_0
    :try_start_0
    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 727
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 740
    :cond_1
    :try_start_1
    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_1
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 749
    .local v1, "encodingCanonicalName":Ljava/lang/String;
    :goto_0
    :try_start_2
    new-instance v6, Ljava/io/PrintStream;

    const/4 v7, 0x0

    invoke-direct {v6, p1, v7, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    .line 751
    .local v6, "printStream":Ljava/io/PrintStream;
    const-string v7, "<?xml version=\"1.0\" encoding=\""

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 752
    invoke-virtual {v6, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 753
    const-string v7, "\"?>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 755
    const-string v7, "<!DOCTYPE properties SYSTEM \""

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 756
    const-string v7, "http://java.sun.com/dtd/properties.dtd"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 757
    const-string v7, "\">"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 759
    const-string v7, "<properties>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 761
    if-eqz p2, :cond_2

    .line 762
    const-string v7, "<comment>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 763
    invoke-direct {p0, p2}, Lorg/acra/CrashReportData;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 764
    const-string v7, "</comment>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 767
    :cond_2
    invoke-virtual {p0}, Lorg/acra/CrashReportData;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 768
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/acra/ReportField;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/acra/ReportField;

    invoke-virtual {v7}, Lorg/acra/ReportField;->toString()Ljava/lang/String;

    move-result-object v5

    .line 769
    .local v5, "keyValue":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 770
    .local v3, "entryValue":Ljava/lang/String;
    const-string v7, "<entry key=\""

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 771
    invoke-direct {p0, v5}, Lorg/acra/CrashReportData;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 772
    const-string v7, "\">"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 773
    invoke-direct {p0, v3}, Lorg/acra/CrashReportData;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 774
    const-string v7, "</entry>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 741
    .end local v1    # "encodingCanonicalName":Ljava/lang/String;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/acra/ReportField;Ljava/lang/String;>;"
    .end local v3    # "entryValue":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "keyValue":Ljava/lang/String;
    .end local v6    # "printStream":Ljava/io/PrintStream;
    :catch_0
    move-exception v0

    .line 742
    .local v0, "e":Ljava/nio/charset/IllegalCharsetNameException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Warning: encoding name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is illegal, using UTF-8 as default encoding"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 743
    const-string v1, "UTF-8"

    .line 747
    .restart local v1    # "encodingCanonicalName":Ljava/lang/String;
    goto/16 :goto_0

    .line 744
    .end local v0    # "e":Ljava/nio/charset/IllegalCharsetNameException;
    .end local v1    # "encodingCanonicalName":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 745
    .local v0, "e":Ljava/nio/charset/UnsupportedCharsetException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Warning: encoding "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not supported, using UTF-8 as default encoding"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 746
    const-string v1, "UTF-8"

    .restart local v1    # "encodingCanonicalName":Ljava/lang/String;
    goto/16 :goto_0

    .line 776
    .end local v0    # "e":Ljava/nio/charset/UnsupportedCharsetException;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "printStream":Ljava/io/PrintStream;
    :cond_3
    const-string v7, "</properties>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 777
    invoke-virtual {v6}, Ljava/io/PrintStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 778
    monitor-exit p0

    return-void
.end method
