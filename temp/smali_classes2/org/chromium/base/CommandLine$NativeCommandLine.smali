.class Lorg/chromium/base/CommandLine$NativeCommandLine;
.super Lorg/chromium/base/CommandLine;
.source "CommandLine.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/base/CommandLine;-><init>(Lorg/chromium/base/CommandLine$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/base/CommandLine$1;)V
    .locals 0

    .prologue
    .line 372
    invoke-direct {p0}, Lorg/chromium/base/CommandLine$NativeCommandLine;-><init>()V

    return-void
.end method


# virtual methods
.method public appendSwitch(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 385
    invoke-static {p1}, Lorg/chromium/base/CommandLine;->access$600(Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method public appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 390
    invoke-static {p1, p2}, Lorg/chromium/base/CommandLine;->access$700(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public appendSwitchesAndArguments([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 395
    invoke-static {p1}, Lorg/chromium/base/CommandLine;->access$800([Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method public getSwitchValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    invoke-static {p1}, Lorg/chromium/base/CommandLine;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasSwitch(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 375
    invoke-static {p1}, Lorg/chromium/base/CommandLine;->access$400(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNativeImplementation()Z
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x1

    return v0
.end method
