.class public Ldatabase/MyWorkouts;
.super Ljava/lang/Object;
.source "MyWorkouts.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private calories:I

.field private id:J

.field private jumps:I

.field private workout_end_time:J

.field private workout_start_time:J


# direct methods
.method public constructor <init>(JJJII)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "workout_start_time"    # J
    .param p5, "workout_end_time"    # J
    .param p7, "jumps"    # I
    .param p8, "calories"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Ldatabase/MyWorkouts;->id:J

    .line 19
    iput-wide p3, p0, Ldatabase/MyWorkouts;->workout_start_time:J

    .line 20
    iput-wide p5, p0, Ldatabase/MyWorkouts;->workout_end_time:J

    .line 21
    iput p7, p0, Ldatabase/MyWorkouts;->jumps:I

    .line 22
    iput p8, p0, Ldatabase/MyWorkouts;->calories:I

    .line 24
    return-void
.end method


# virtual methods
.method public getCalories()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Ldatabase/MyWorkouts;->calories:I

    return v0
.end method

.method public getID()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Ldatabase/MyWorkouts;->id:J

    return-wide v0
.end method

.method public getJumps()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Ldatabase/MyWorkouts;->jumps:I

    return v0
.end method

.method public getWorkoutEndTime()J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Ldatabase/MyWorkouts;->workout_end_time:J

    return-wide v0
.end method

.method public getWorkoutStartTime()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Ldatabase/MyWorkouts;->workout_start_time:J

    return-wide v0
.end method
