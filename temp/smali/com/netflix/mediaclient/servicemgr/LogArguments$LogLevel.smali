.class public final enum Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;
.super Ljava/lang/Enum;
.source "LogArguments.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

.field public static final enum CONSOLE:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

.field public static final enum DEBUG:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

.field public static final enum ERROR:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

.field public static final enum FATAL:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

.field public static final enum INFO:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

.field public static final enum TRACE:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

.field public static final enum WARN:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;


# instance fields
.field private mLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    const-string/jumbo v1, "CONSOLE"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->CONSOLE:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    .line 23
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    const-string/jumbo v1, "TRACE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->TRACE:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    const-string/jumbo v1, "DEBUG"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v6, v2}, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->DEBUG:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    const-string/jumbo v1, "INFO"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v7, v2}, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->INFO:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    .line 26
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    const-string/jumbo v1, "WARN"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v8, v2}, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->WARN:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    .line 27
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    const-string/jumbo v1, "ERROR"

    const/4 v2, 0x5

    const/16 v3, 0x32

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->ERROR:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    const-string/jumbo v1, "FATAL"

    const/4 v2, 0x6

    const/16 v3, 0x3c

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->FATAL:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    .line 21
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->CONSOLE:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->TRACE:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->DEBUG:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->INFO:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->WARN:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->ERROR:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->FATAL:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->mLevel:I

    .line 33
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    return-object v0
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->mLevel:I

    return v0
.end method

.method public getLevelInString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->mLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
