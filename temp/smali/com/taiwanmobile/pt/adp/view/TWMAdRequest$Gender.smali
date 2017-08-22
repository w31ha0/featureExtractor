.class public final enum Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;
.super Ljava/lang/Enum;
.source "TWMAdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation


# static fields
.field public static final enum FEMALE:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;

.field public static final enum MALE:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;

.field public static final enum UNKNOWN:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;

.field private static final synthetic a:[Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 209
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;

    const-string v1, "MALE"

    invoke-direct {v0, v1, v2}, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;->MALE:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;

    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;

    const-string v1, "FEMALE"

    invoke-direct {v0, v1, v3}, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;->FEMALE:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;

    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;->UNKNOWN:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;

    .line 208
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;

    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;->MALE:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;->FEMALE:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;->UNKNOWN:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;->a:[Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;

    return-object v0
.end method

.method public static values()[Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;->a:[Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;

    array-length v1, v0

    new-array v2, v1, [Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
