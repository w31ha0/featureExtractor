.class public final enum Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;
.super Ljava/lang/Enum;
.source "MobFoxReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobfox/sdk/logging/MobFoxReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SHORT_MESSAGE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;

.field public static final enum ANDROID:Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;

.field public static final enum CRASH:Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;

    const-string v1, "CRASH"

    invoke-direct {v0, v1, v2}, Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;->CRASH:Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;

    new-instance v0, Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;

    const-string v1, "ANDROID"

    invoke-direct {v0, v1, v3}, Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;->ANDROID:Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;

    sget-object v1, Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;->CRASH:Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;->ANDROID:Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;->$VALUES:[Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;

    return-object v0
.end method

.method public static values()[Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;->$VALUES:[Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;

    invoke-virtual {v0}, [Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;

    return-object v0
.end method