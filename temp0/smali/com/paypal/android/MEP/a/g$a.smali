.class public final enum Lcom/paypal/android/MEP/a/g$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/paypal/android/MEP/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/paypal/android/MEP/a/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/paypal/android/MEP/a/g$a;

.field public static final enum b:Lcom/paypal/android/MEP/a/g$a;

.field public static final enum c:Lcom/paypal/android/MEP/a/g$a;

.field public static final enum d:Lcom/paypal/android/MEP/a/g$a;

.field private static final synthetic e:[Lcom/paypal/android/MEP/a/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/paypal/android/MEP/a/g$a;

    const-string v1, "STATE_PIN"

    invoke-direct {v0, v1, v2}, Lcom/paypal/android/MEP/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/MEP/a/g$a;->a:Lcom/paypal/android/MEP/a/g$a;

    new-instance v0, Lcom/paypal/android/MEP/a/g$a;

    const-string v1, "STATE_REVIEW"

    invoke-direct {v0, v1, v3}, Lcom/paypal/android/MEP/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/MEP/a/g$a;->b:Lcom/paypal/android/MEP/a/g$a;

    new-instance v0, Lcom/paypal/android/MEP/a/g$a;

    const-string v1, "STATE_CONFIRM_PREAPPROVAL"

    invoke-direct {v0, v1, v4}, Lcom/paypal/android/MEP/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/MEP/a/g$a;->c:Lcom/paypal/android/MEP/a/g$a;

    new-instance v0, Lcom/paypal/android/MEP/a/g$a;

    const-string v1, "STATE_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/paypal/android/MEP/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/MEP/a/g$a;->d:Lcom/paypal/android/MEP/a/g$a;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/paypal/android/MEP/a/g$a;

    sget-object v1, Lcom/paypal/android/MEP/a/g$a;->a:Lcom/paypal/android/MEP/a/g$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/paypal/android/MEP/a/g$a;->b:Lcom/paypal/android/MEP/a/g$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/paypal/android/MEP/a/g$a;->c:Lcom/paypal/android/MEP/a/g$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/paypal/android/MEP/a/g$a;->d:Lcom/paypal/android/MEP/a/g$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/paypal/android/MEP/a/g$a;->e:[Lcom/paypal/android/MEP/a/g$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/paypal/android/MEP/a/g$a;
    .locals 1

    const-class v0, Lcom/paypal/android/MEP/a/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/a/g$a;

    return-object v0
.end method

.method public static values()[Lcom/paypal/android/MEP/a/g$a;
    .locals 1

    sget-object v0, Lcom/paypal/android/MEP/a/g$a;->e:[Lcom/paypal/android/MEP/a/g$a;

    invoke-virtual {v0}, [Lcom/paypal/android/MEP/a/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/paypal/android/MEP/a/g$a;

    return-object v0
.end method
