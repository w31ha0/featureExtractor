.class public final enum Lio/realm/internal/SharedRealm$Durability;
.super Ljava/lang/Enum;
.source "SharedRealm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/realm/internal/SharedRealm$Durability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/internal/SharedRealm$Durability;

.field public static final enum FULL:Lio/realm/internal/SharedRealm$Durability;

.field public static final enum MEM_ONLY:Lio/realm/internal/SharedRealm$Durability;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, Lio/realm/internal/SharedRealm$Durability;

    const-string/jumbo v1, "FULL"

    invoke-direct {v0, v1, v2, v2}, Lio/realm/internal/SharedRealm$Durability;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/internal/SharedRealm$Durability;->FULL:Lio/realm/internal/SharedRealm$Durability;

    .line 72
    new-instance v0, Lio/realm/internal/SharedRealm$Durability;

    const-string/jumbo v1, "MEM_ONLY"

    invoke-direct {v0, v1, v3, v3}, Lio/realm/internal/SharedRealm$Durability;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/internal/SharedRealm$Durability;->MEM_ONLY:Lio/realm/internal/SharedRealm$Durability;

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [Lio/realm/internal/SharedRealm$Durability;

    sget-object v1, Lio/realm/internal/SharedRealm$Durability;->FULL:Lio/realm/internal/SharedRealm$Durability;

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/internal/SharedRealm$Durability;->MEM_ONLY:Lio/realm/internal/SharedRealm$Durability;

    aput-object v1, v0, v3

    sput-object v0, Lio/realm/internal/SharedRealm$Durability;->$VALUES:[Lio/realm/internal/SharedRealm$Durability;

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
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput p3, p0, Lio/realm/internal/SharedRealm$Durability;->value:I

    .line 78
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/internal/SharedRealm$Durability;
    .locals 1

    .prologue
    .line 70
    const-class v0, Lio/realm/internal/SharedRealm$Durability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/realm/internal/SharedRealm$Durability;

    return-object v0
.end method

.method public static values()[Lio/realm/internal/SharedRealm$Durability;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lio/realm/internal/SharedRealm$Durability;->$VALUES:[Lio/realm/internal/SharedRealm$Durability;

    invoke-virtual {v0}, [Lio/realm/internal/SharedRealm$Durability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/internal/SharedRealm$Durability;

    return-object v0
.end method
