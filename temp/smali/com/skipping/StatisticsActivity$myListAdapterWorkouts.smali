.class Lcom/skipping/StatisticsActivity$myListAdapterWorkouts;
.super Landroid/widget/BaseAdapter;
.source "StatisticsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/skipping/StatisticsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "myListAdapterWorkouts"
.end annotation


# instance fields
.field private arrayMyData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldatabase/MyWorkouts;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/skipping/StatisticsActivity;


# direct methods
.method public constructor <init>(Lcom/skipping/StatisticsActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p2, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ldatabase/MyWorkouts;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1210
    .local p3, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldatabase/MyWorkouts;>;"
    iput-object p1, p0, Lcom/skipping/StatisticsActivity$myListAdapterWorkouts;->this$0:Lcom/skipping/StatisticsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1211
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/skipping/StatisticsActivity$myListAdapterWorkouts;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 1212
    invoke-virtual {p0, p3}, Lcom/skipping/StatisticsActivity$myListAdapterWorkouts;->setArrayMyData(Ljava/util/ArrayList;)V

    .line 1213
    return-void
.end method


# virtual methods
.method public getArrayMyData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ldatabase/MyWorkouts;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/skipping/StatisticsActivity$myListAdapterWorkouts;->arrayMyData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/skipping/StatisticsActivity$myListAdapterWorkouts;->arrayMyData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1229
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1233
    iget-object v1, p0, Lcom/skipping/StatisticsActivity$myListAdapterWorkouts;->arrayMyData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldatabase/MyWorkouts;

    .line 1234
    .local v0, "md":Ldatabase/MyWorkouts;
    if-eqz v0, :cond_0

    .line 1235
    invoke-virtual {v0}, Ldatabase/MyWorkouts;->getID()J

    move-result-wide v1

    .line 1237
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1242
    if-nez p2, :cond_0

    .line 1243
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/skipping/StatisticsActivity$myListAdapterWorkouts;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f030013

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1245
    :cond_0
    const v13, 0x7f0a0011

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1246
    .local v12, "workout_start_time":Landroid/widget/TextView;
    const v13, 0x7f0a0012

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1247
    .local v11, "workout_end_time":Landroid/widget/TextView;
    const v13, 0x7f0a0013

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1248
    .local v7, "jumps":Landroid/widget/TextView;
    const v13, 0x7f0a0014

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1256
    .local v2, "calories":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/skipping/StatisticsActivity$myListAdapterWorkouts;->this$0:Lcom/skipping/StatisticsActivity;

    invoke-virtual {v13}, Lcom/skipping/StatisticsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    .line 1257
    .local v3, "dateFormat":Ljava/text/DateFormat;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v13, "HH:mm"

    invoke-direct {v4, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1260
    .local v4, "dateFormat1":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/skipping/StatisticsActivity$myListAdapterWorkouts;->arrayMyData:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ldatabase/MyWorkouts;

    .line 1263
    .local v8, "md":Ldatabase/MyWorkouts;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ldatabase/MyWorkouts;->getWorkoutStartTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Ldatabase/MyWorkouts;->getWorkoutStartTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1264
    .local v1, "TimeFromTo":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, " - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Ldatabase/MyWorkouts;->getWorkoutEndTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Ldatabase/MyWorkouts;->getWorkoutEndTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1266
    invoke-virtual {v8}, Ldatabase/MyWorkouts;->getWorkoutEndTime()J

    move-result-wide v13

    invoke-virtual {v8}, Ldatabase/MyWorkouts;->getWorkoutStartTime()J

    move-result-wide v15

    sub-long/2addr v13, v15

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    long-to-int v13, v13

    int-to-long v5, v13

    .line 1267
    .local v5, "duration":J
    const-wide/16 v13, 0x3c

    rem-long v13, v5, v13

    long-to-int v10, v13

    .line 1268
    .local v10, "seconds":I
    const-wide/16 v13, 0x3c

    div-long v13, v5, v13

    long-to-int v9, v13

    .line 1270
    .local v9, "minutes":I
    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1271
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v13, 0xa

    if-ge v9, v13, :cond_1

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, "0"

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_0
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v13, 0xa

    if-ge v10, v13, :cond_2

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, "0"

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_1
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1272
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ldatabase/MyWorkouts;->getJumps()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1273
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ldatabase/MyWorkouts;->getCalories()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1275
    return-object p2

    .line 1271
    :cond_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_0

    :cond_2
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_1
.end method

.method public setArrayMyData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ldatabase/MyWorkouts;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1220
    .local p1, "arrayMyData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldatabase/MyWorkouts;>;"
    iput-object p1, p0, Lcom/skipping/StatisticsActivity$myListAdapterWorkouts;->arrayMyData:Ljava/util/ArrayList;

    .line 1221
    return-void
.end method
