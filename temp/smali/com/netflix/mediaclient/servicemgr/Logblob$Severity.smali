.class public final enum Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;
.super Ljava/lang/Enum;
.source "Logblob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

.field public static final enum error:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

.field public static final enum info:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

.field public static final enum warn:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    const-string/jumbo v1, "error"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->error:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    .line 70
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    const-string/jumbo v1, "info"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->info:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    .line 71
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    const-string/jumbo v1, "warn"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->warn:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    .line 68
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->error:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->info:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->warn:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    return-object v0
.end method
