.class public abstract Lorg/chromium/base/CommandLine;
.super Ljava/lang/Object;
.source "CommandLine.java"


# annotations
.annotation build Lorg/chromium/base/annotations/MainDex;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final SWITCH_PREFIX:Ljava/lang/String; = "--"

.field private static final SWITCH_TERMINATOR:Ljava/lang/String; = "--"

.field private static final SWITCH_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final TAG:Ljava/lang/String; = "CommandLine"

.field private static final sCommandLine:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/chromium/base/CommandLine;",
            ">;"
        }
    .end annotation
.end field

.field private static final sResetListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/chromium/base/CommandLine$ResetListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/chromium/base/CommandLine;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/base/CommandLine;->$assertionsDisabled:Z

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/chromium/base/CommandLine;->sResetListeners:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/chromium/base/CommandLine;->sCommandLine:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    .line 30
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/base/CommandLine$1;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/chromium/base/CommandLine;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lorg/chromium/base/CommandLine;->sResetListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 31
    invoke-static {p0}, Lorg/chromium/base/CommandLine;->nativeHasSwitch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-static {p0}, Lorg/chromium/base/CommandLine;->nativeGetSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-static {p0}, Lorg/chromium/base/CommandLine;->nativeAppendSwitch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-static {p0, p1}, Lorg/chromium/base/CommandLine;->nativeAppendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-static {p0}, Lorg/chromium/base/CommandLine;->nativeAppendSwitchesAndArguments([Ljava/lang/String;)V

    return-void
.end method

.method public static addResetListener(Lorg/chromium/base/CommandLine$ResetListener;)V
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lorg/chromium/base/CommandLine;->sResetListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    return-void
.end method

.method public static enableNativeProxy()V
    .locals 3

    .prologue
    .line 219
    sget-object v0, Lorg/chromium/base/CommandLine;->sCommandLine:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lorg/chromium/base/CommandLine$NativeCommandLine;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/chromium/base/CommandLine$NativeCommandLine;-><init>(Lorg/chromium/base/CommandLine$1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 220
    return-void
.end method

.method public static getInstance()Lorg/chromium/base/CommandLine;
    .locals 2
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 117
    sget-object v0, Lorg/chromium/base/CommandLine;->sCommandLine:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/CommandLine;

    .line 118
    sget-boolean v1, Lorg/chromium/base/CommandLine;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 119
    :cond_0
    return-object v0
.end method

.method public static getJavaSwitchesOrNull()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 223
    sget-object v0, Lorg/chromium/base/CommandLine;->sCommandLine:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/CommandLine;

    .line 224
    if-eqz v0, :cond_1

    .line 225
    sget-boolean v1, Lorg/chromium/base/CommandLine;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/chromium/base/CommandLine;->isNativeImplementation()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 226
    :cond_0
    check-cast v0, Lorg/chromium/base/CommandLine$JavaCommandLine;

    invoke-static {v0}, Lorg/chromium/base/CommandLine$JavaCommandLine;->access$200(Lorg/chromium/base/CommandLine$JavaCommandLine;)[Ljava/lang/String;

    move-result-object v0

    .line 228
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lorg/chromium/base/CommandLine$JavaCommandLine;

    invoke-direct {v0, p0}, Lorg/chromium/base/CommandLine$JavaCommandLine;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Lorg/chromium/base/CommandLine;->setInstance(Lorg/chromium/base/CommandLine;)V

    .line 129
    return-void
.end method

.method public static initFromFile(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 138
    const/16 v0, 0x4000

    invoke-static {p0, v0}, Lorg/chromium/base/CommandLine;->readUtf8FileFullyCrashIfTooBig(Ljava/lang/String;I)[C

    move-result-object v0

    .line 139
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/chromium/base/CommandLine;->init([Ljava/lang/String;)V

    .line 140
    return-void

    .line 139
    :cond_0
    invoke-static {v0}, Lorg/chromium/base/CommandLine;->tokenizeQuotedAruments([C)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lorg/chromium/base/CommandLine;->sCommandLine:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeAppendSwitch(Ljava/lang/String;)V
.end method

.method private static native nativeAppendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeAppendSwitchesAndArguments([Ljava/lang/String;)V
.end method

.method private static native nativeGetSwitchValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeHasSwitch(Ljava/lang/String;)Z
.end method

.method private static native nativeReset()V
.end method

.method private static readUtf8FileFullyCrashIfTooBig(Ljava/lang/String;I)[C
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 245
    .line 246
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 249
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    move-object v0, v1

    .line 275
    :cond_0
    :goto_0
    return-object v0

    .line 253
    :cond_1
    int-to-long v6, p1

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    .line 254
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " exceeds limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_2
    long-to-int v0, v4

    :try_start_0
    new-array v0, v0, [C

    .line 260
    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v2, v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/Reader;->read([C)I

    move-result v3

    .line 264
    sget-boolean v4, Lorg/chromium/base/CommandLine;->$assertionsDisabled:Z

    if-nez v4, :cond_4

    invoke-virtual {v2}, Ljava/io/Reader;->ready()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 266
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 272
    :goto_1
    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_2
    move-object v0, v1

    .line 275
    goto :goto_0

    .line 265
    :cond_4
    :try_start_3
    array-length v4, v0

    if-ge v3, v4, :cond_5

    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Ljava/util/Arrays;->copyOfRange([CII)[C
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 272
    :cond_5
    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 273
    :catch_1
    move-exception v1

    .line 274
    const-string/jumbo v2, "CommandLine"

    const-string/jumbo v3, "Unable to close file reader."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 273
    :catch_2
    move-exception v0

    .line 274
    const-string/jumbo v2, "CommandLine"

    const-string/jumbo v3, "Unable to close file reader."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 268
    :catch_3
    move-exception v0

    move-object v2, v1

    .line 272
    :goto_3
    if-eqz v2, :cond_6

    :try_start_5
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_6
    :goto_4
    move-object v0, v1

    .line 275
    goto/16 :goto_0

    .line 273
    :catch_4
    move-exception v0

    .line 274
    const-string/jumbo v2, "CommandLine"

    const-string/jumbo v3, "Unable to close file reader."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 271
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 272
    :goto_5
    if-eqz v2, :cond_7

    :try_start_6
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 275
    :cond_7
    :goto_6
    throw v0

    .line 273
    :catch_5
    move-exception v1

    .line 274
    const-string/jumbo v2, "CommandLine"

    const-string/jumbo v3, "Unable to close file reader."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 271
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 268
    :catch_6
    move-exception v0

    goto :goto_3

    .line 266
    :catch_7
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public static removeResetListener(Lorg/chromium/base/CommandLine$ResetListener;)V
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lorg/chromium/base/CommandLine;->sResetListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method

.method public static reset()V
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/chromium/base/CommandLine;->setInstance(Lorg/chromium/base/CommandLine;)V

    .line 149
    new-instance v0, Lorg/chromium/base/CommandLine$1;

    invoke-direct {v0}, Lorg/chromium/base/CommandLine$1;-><init>()V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 155
    return-void
.end method

.method private static setInstance(Lorg/chromium/base/CommandLine;)V
    .locals 1

    .prologue
    .line 232
    sget-object v0, Lorg/chromium/base/CommandLine;->sCommandLine:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/CommandLine;

    .line 233
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/base/CommandLine;->isNativeImplementation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-static {}, Lorg/chromium/base/CommandLine;->nativeReset()V

    .line 236
    :cond_0
    return-void
.end method

.method public static tokenizeQuotedAruments([C)[Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 175
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 181
    array-length v7, p0

    move v5, v4

    move v1, v4

    move-object v0, v2

    :goto_0
    if-ge v5, v7, :cond_8

    aget-char v3, p0, v5

    .line 183
    if-nez v1, :cond_0

    const/16 v8, 0x27

    if-eq v3, v8, :cond_1

    const/16 v8, 0x22

    if-eq v3, v8, :cond_1

    :cond_0
    if-ne v3, v1, :cond_4

    .line 185
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    const/16 v9, 0x5c

    if-ne v8, v9, :cond_2

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v8, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    move v10, v1

    move-object v1, v0

    move v0, v10

    .line 181
    :goto_1
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v10, v0

    move-object v0, v1

    move v1, v10

    goto :goto_0

    .line 189
    :cond_2
    if-nez v1, :cond_3

    move v1, v3

    :goto_2
    move v10, v1

    move-object v1, v0

    move v0, v10

    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_2

    .line 191
    :cond_4
    if-nez v1, :cond_5

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 192
    if-eqz v0, :cond_7

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    move-object v1, v2

    .line 194
    goto :goto_1

    .line 197
    :cond_5
    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    move v10, v1

    move-object v1, v0

    move v0, v10

    goto :goto_1

    .line 201
    :cond_8
    if-eqz v0, :cond_a

    .line 202
    if-eqz v1, :cond_9

    .line 203
    const-string/jumbo v1, "CommandLine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unterminated quoted string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public abstract appendSwitch(Ljava/lang/String;)V
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation
.end method

.method public abstract appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract appendSwitchesAndArguments([Ljava/lang/String;)V
.end method

.method public abstract getSwitchValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getSwitchValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lorg/chromium/base/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object p2

    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public abstract hasSwitch(Ljava/lang/String;)Z
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation
.end method

.method public isNativeImplementation()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method
