.class final enum Lcom/creativemobi/DragRacing/billing/h;
.super Ljava/lang/Enum;
.source "BillingInterface.java"


# static fields
.field public static final enum a:Lcom/creativemobi/DragRacing/billing/h;

.field public static final enum b:Lcom/creativemobi/DragRacing/billing/h;

.field private static final synthetic c:[Lcom/creativemobi/DragRacing/billing/h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    new-instance v0, Lcom/creativemobi/DragRacing/billing/h;

    const-string v1, "MANAGED"

    invoke-direct {v0, v1, v2}, Lcom/creativemobi/DragRacing/billing/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/creativemobi/DragRacing/billing/h;->a:Lcom/creativemobi/DragRacing/billing/h;

    new-instance v0, Lcom/creativemobi/DragRacing/billing/h;

    const-string v1, "UNMANAGED"

    invoke-direct {v0, v1, v3}, Lcom/creativemobi/DragRacing/billing/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/creativemobi/DragRacing/billing/h;->b:Lcom/creativemobi/DragRacing/billing/h;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/creativemobi/DragRacing/billing/h;

    sget-object v1, Lcom/creativemobi/DragRacing/billing/h;->a:Lcom/creativemobi/DragRacing/billing/h;

    aput-object v1, v0, v2

    sget-object v1, Lcom/creativemobi/DragRacing/billing/h;->b:Lcom/creativemobi/DragRacing/billing/h;

    aput-object v1, v0, v3

    sput-object v0, Lcom/creativemobi/DragRacing/billing/h;->c:[Lcom/creativemobi/DragRacing/billing/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/creativemobi/DragRacing/billing/h;
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/creativemobi/DragRacing/billing/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/creativemobi/DragRacing/billing/h;

    return-object p0
.end method

.method public static values()[Lcom/creativemobi/DragRacing/billing/h;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/creativemobi/DragRacing/billing/h;->c:[Lcom/creativemobi/DragRacing/billing/h;

    invoke-virtual {v0}, [Lcom/creativemobi/DragRacing/billing/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/creativemobi/DragRacing/billing/h;

    return-object v0
.end method
