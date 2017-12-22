.class public final enum Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;
.super Ljava/lang/Enum;
.source "DiagnosisAgent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

.field public static final enum COMPLETED:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

.field public static final enum NOT_TESTED:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

.field public static final enum TEST_ONGOING:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

    const-string/jumbo v1, "NOT_TESTED"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;->NOT_TESTED:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

    .line 54
    new-instance v0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

    const-string/jumbo v1, "TEST_ONGOING"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;->TEST_ONGOING:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

    .line 55
    new-instance v0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

    const-string/jumbo v1, "COMPLETED"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;->COMPLETED:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

    sget-object v1, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;->NOT_TESTED:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;->TEST_ONGOING:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;->COMPLETED:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;->$VALUES:[Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;->$VALUES:[Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

    return-object v0
.end method
