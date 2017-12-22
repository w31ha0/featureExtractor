.class public final enum Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;
.super Ljava/lang/Enum;
.source "DiagnosisActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

.field public static final enum FAILED:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

.field public static final enum INITIAL:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

.field public static final enum SUCCESS:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

.field public static final enum TEST_ONGOING:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 166
    new-instance v0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    const-string/jumbo v1, "INITIAL"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;->INITIAL:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    .line 167
    new-instance v0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    const-string/jumbo v1, "TEST_ONGOING"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;->TEST_ONGOING:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    .line 168
    new-instance v0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    const-string/jumbo v1, "FAILED"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;->FAILED:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    .line 169
    new-instance v0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;->SUCCESS:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    .line 165
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    sget-object v1, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;->INITIAL:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;->TEST_ONGOING:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;->FAILED:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;->SUCCESS:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;->$VALUES:[Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

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
    .line 165
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;
    .locals 1

    .prologue
    .line 165
    const-class v0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;->$VALUES:[Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    return-object v0
.end method
