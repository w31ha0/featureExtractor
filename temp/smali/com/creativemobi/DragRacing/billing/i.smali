.class public final enum Lcom/creativemobi/DragRacing/billing/i;
.super Ljava/lang/Enum;
.source "Consts.java"


# static fields
.field public static final enum a:Lcom/creativemobi/DragRacing/billing/i;

.field public static final enum b:Lcom/creativemobi/DragRacing/billing/i;

.field public static final enum c:Lcom/creativemobi/DragRacing/billing/i;

.field private static final synthetic d:[Lcom/creativemobi/DragRacing/billing/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/creativemobi/DragRacing/billing/i;

    const-string v1, "PURCHASED"

    invoke-direct {v0, v1, v2}, Lcom/creativemobi/DragRacing/billing/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/creativemobi/DragRacing/billing/i;->a:Lcom/creativemobi/DragRacing/billing/i;

    .line 48
    new-instance v0, Lcom/creativemobi/DragRacing/billing/i;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v3}, Lcom/creativemobi/DragRacing/billing/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/creativemobi/DragRacing/billing/i;->b:Lcom/creativemobi/DragRacing/billing/i;

    .line 49
    new-instance v0, Lcom/creativemobi/DragRacing/billing/i;

    const-string v1, "REFUNDED"

    invoke-direct {v0, v1, v4}, Lcom/creativemobi/DragRacing/billing/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/creativemobi/DragRacing/billing/i;->c:Lcom/creativemobi/DragRacing/billing/i;

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/creativemobi/DragRacing/billing/i;

    sget-object v1, Lcom/creativemobi/DragRacing/billing/i;->a:Lcom/creativemobi/DragRacing/billing/i;

    aput-object v1, v0, v2

    sget-object v1, Lcom/creativemobi/DragRacing/billing/i;->b:Lcom/creativemobi/DragRacing/billing/i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/creativemobi/DragRacing/billing/i;->c:Lcom/creativemobi/DragRacing/billing/i;

    aput-object v1, v0, v4

    sput-object v0, Lcom/creativemobi/DragRacing/billing/i;->d:[Lcom/creativemobi/DragRacing/billing/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lcom/creativemobi/DragRacing/billing/i;
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lcom/creativemobi/DragRacing/billing/i;->values()[Lcom/creativemobi/DragRacing/billing/i;

    move-result-object v0

    .line 54
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    .line 55
    :cond_0
    sget-object v0, Lcom/creativemobi/DragRacing/billing/i;->b:Lcom/creativemobi/DragRacing/billing/i;

    .line 57
    :goto_0
    return-object v0

    :cond_1
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/creativemobi/DragRacing/billing/i;
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/creativemobi/DragRacing/billing/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/creativemobi/DragRacing/billing/i;

    return-object p0
.end method

.method public static values()[Lcom/creativemobi/DragRacing/billing/i;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/creativemobi/DragRacing/billing/i;->d:[Lcom/creativemobi/DragRacing/billing/i;

    invoke-virtual {v0}, [Lcom/creativemobi/DragRacing/billing/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/creativemobi/DragRacing/billing/i;

    return-object v0
.end method
