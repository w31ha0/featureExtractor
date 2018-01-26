.class public Lorg/acra/ErrorReporter;
.super Ljava/lang/Object;
.source "ErrorReporter.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/acra/ErrorReporter$ReportsSenderWorker;
    }
.end annotation


# static fields
.field static final APPROVED_SUFFIX:Ljava/lang/String; = "-approved"

.field static final EXTRA_REPORT_FILE_NAME:Ljava/lang/String; = "REPORT_FILE_NAME"

.field private static final MAX_SEND_REPORTS:I = 0x5

.field public static final REPORTFILE_EXTENSION:Ljava/lang/String; = ".stacktrace"

.field static final SILENT_SUFFIX:Ljava/lang/String;

.field private static enabled:Z

.field private static mContext:Landroid/content/Context;

.field private static mCrashProperties:Lorg/acra/CrashReportData;

.field private static mInstanceSingleton:Lorg/acra/ErrorReporter;

.field private static mReportSenders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/acra/sender/ReportSender;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCustomParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mInitialConfiguration:Ljava/lang/String;

.field private mReportingInteractionMode:Lorg/acra/ReportingInteractionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 92
    const/4 v0, 0x0

    sput-boolean v0, Lorg/acra/ErrorReporter;->enabled:Z

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    .line 207
    new-instance v0, Lorg/acra/CrashReportData;

    invoke-direct {v0}, Lorg/acra/CrashReportData;-><init>()V

    sput-object v0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/acra/ErrorReporter;->SILENT_SUFFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/acra/ErrorReporter;->mCustomParameters:Ljava/util/Map;

    .line 239
    sget-object v0, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    iput-object v0, p0, Lorg/acra/ErrorReporter;->mReportingInteractionMode:Lorg/acra/ReportingInteractionMode;

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-static {p0, p1, p2, p3}, Lorg/acra/ErrorReporter;->addUserDataToReport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static addUserDataToReport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "commentedReportFileName"    # Ljava/lang/String;
    .param p2, "userComment"    # Ljava/lang/String;
    .param p3, "userEmail"    # Ljava/lang/String;

    .prologue
    .line 1192
    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Add user comment to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1195
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 1196
    .local v2, "input":Ljava/io/FileInputStream;
    new-instance v0, Lorg/acra/CrashReportData;

    invoke-direct {v0}, Lorg/acra/CrashReportData;-><init>()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/InvalidPropertiesFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1198
    .local v0, "commentedCrashReport":Lorg/acra/CrashReportData;
    :try_start_1
    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Loading Properties report to insert user comment."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    invoke-virtual {v0, v2}, Lorg/acra/CrashReportData;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1201
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 1203
    sget-object v3, Lorg/acra/ReportField;->USER_COMMENT:Lorg/acra/ReportField;

    invoke-virtual {v0, v3, p2}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    sget-object v3, Lorg/acra/ReportField;->USER_EMAIL:Lorg/acra/ReportField;

    if-nez p3, :cond_0

    const-string p3, ""

    .end local p3    # "userEmail":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v3, p3}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    invoke-static {p1, v0}, Lorg/acra/ErrorReporter;->saveCrashReportFile(Ljava/lang/String;Lorg/acra/CrashReportData;)Ljava/lang/String;

    .line 1215
    .end local v0    # "commentedCrashReport":Lorg/acra/CrashReportData;
    .end local v2    # "input":Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    return-void

    .line 1201
    .restart local v0    # "commentedCrashReport":Lorg/acra/CrashReportData;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    .restart local p3    # "userEmail":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    throw v3
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/InvalidPropertiesFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1206
    .end local v0    # "commentedCrashReport":Lorg/acra/CrashReportData;
    .end local v2    # "input":Ljava/io/FileInputStream;
    .end local p3    # "userEmail":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1207
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "User comment not added: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1208
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 1209
    .local v1, "e":Ljava/util/InvalidPropertiesFormatException;
    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "User comment not added: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1210
    .end local v1    # "e":Ljava/util/InvalidPropertiesFormatException;
    :catch_2
    move-exception v1

    .line 1211
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "User comment not added: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private containsOnlySilentOrApprovedReports([Ljava/lang/String;)Z
    .locals 5
    .param p1, "reportFileNames"    # [Ljava/lang/String;

    .prologue
    .line 1142
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1143
    .local v3, "reportFileName":Ljava/lang/String;
    invoke-direct {p0, v3}, Lorg/acra/ErrorReporter;->isApproved(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1144
    const/4 v4, 0x0

    .line 1147
    .end local v3    # "reportFileName":Ljava/lang/String;
    :goto_1
    return v4

    .line 1142
    .restart local v3    # "reportFileName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1147
    .end local v3    # "reportFileName":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private createCustomInfoString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 324
    const-string v2, ""

    .line 325
    .local v2, "CustomInfo":Ljava/lang/String;
    iget-object v4, p0, Lorg/acra/ErrorReporter;->mCustomParameters:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 326
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 327
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 328
    .local v0, "CurrentKey":Ljava/lang/String;
    iget-object v4, p0, Lorg/acra/ErrorReporter;->mCustomParameters:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 329
    .local v1, "CurrentVal":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 330
    goto :goto_0

    .line 331
    .end local v0    # "CurrentKey":Ljava/lang/String;
    .end local v1    # "CurrentVal":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private deleteFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 992
    invoke-virtual {p1, p2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    .line 993
    .local v0, "deleted":Z
    if-nez v0, :cond_0

    .line 994
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not deleted error report : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :cond_0
    return-void
.end method

.method private deletePendingReports(ZZI)V
    .locals 6
    .param p1, "deleteApprovedReports"    # Z
    .param p2, "deleteNonApprovedReports"    # Z
    .param p3, "nbOfLatestToKeep"    # I

    .prologue
    .line 1104
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->getCrashReportFilesList()[Ljava/lang/String;

    move-result-object v1

    .line 1105
    .local v1, "filesList":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1106
    if-eqz v1, :cond_3

    .line 1107
    const/4 v3, 0x0

    .line 1109
    .local v3, "isReportApproved":Z
    const/4 v2, 0x0

    .local v2, "iFile":I
    :goto_0
    array-length v4, v1

    sub-int/2addr v4, p3

    if-ge v2, v4, :cond_3

    .line 1110
    aget-object v0, v1, v2

    .line 1111
    .local v0, "fileName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/acra/ErrorReporter;->isApproved(Ljava/lang/String;)Z

    move-result v3

    .line 1112
    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-nez v3, :cond_2

    if-eqz p2, :cond_2

    .line 1113
    :cond_1
    new-instance v4, Ljava/io/File;

    sget-object v5, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1109
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1117
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v2    # "iFile":I
    .end local v3    # "isReportApproved":Z
    :cond_3
    return-void
.end method

.method private static getAvailableInternalMemorySize()J
    .locals 8

    .prologue
    .line 374
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 375
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 376
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 377
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 378
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    return-wide v6
.end method

.method public static getInstance()Lorg/acra/ErrorReporter;
    .locals 1

    .prologue
    .line 340
    sget-object v0, Lorg/acra/ErrorReporter;->mInstanceSingleton:Lorg/acra/ErrorReporter;

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Lorg/acra/ErrorReporter;

    invoke-direct {v0}, Lorg/acra/ErrorReporter;-><init>()V

    sput-object v0, Lorg/acra/ErrorReporter;->mInstanceSingleton:Lorg/acra/ErrorReporter;

    .line 343
    :cond_0
    sget-object v0, Lorg/acra/ErrorReporter;->mInstanceSingleton:Lorg/acra/ErrorReporter;

    return-object v0
.end method

.method private getLatestNonSilentReport([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "filesList"    # [Ljava/lang/String;

    .prologue
    .line 1057
    if-eqz p1, :cond_2

    array-length v1, p1

    if-lez v1, :cond_2

    .line 1058
    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1059
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lorg/acra/ErrorReporter;->isSilent(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1060
    aget-object v1, p1, v0

    .line 1066
    .end local v0    # "i":I
    :goto_1
    return-object v1

    .line 1058
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1064
    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p1, v1

    goto :goto_1

    .line 1066
    .end local v0    # "i":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static getTotalInternalMemorySize()J
    .locals 8

    .prologue
    .line 388
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 389
    .local v2, "path":Ljava/io/File;
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 390
    .local v3, "stat":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    .line 391
    .local v0, "blockSize":J
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v4, v6

    .line 392
    .local v4, "totalBlocks":J
    mul-long v6, v4, v0

    return-wide v6
.end method

.method private isApproved(Ljava/lang/String;)Z
    .locals 1
    .param p1, "reportFileName"    # Ljava/lang/String;

    .prologue
    .line 1173
    invoke-direct {p0, p1}, Lorg/acra/ErrorReporter;->isSilent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-approved"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSilent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "reportFileName"    # Ljava/lang/String;

    .prologue
    .line 1157
    sget-object v0, Lorg/acra/ErrorReporter;->SILENT_SUFFIX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private loadCrashReport(Landroid/content/Context;Ljava/lang/String;)Lorg/acra/CrashReportData;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 980
    new-instance v0, Lorg/acra/CrashReportData;

    invoke-direct {v0}, Lorg/acra/CrashReportData;-><init>()V

    .line 981
    .local v0, "crashReport":Lorg/acra/CrashReportData;
    invoke-virtual {p1, p2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 984
    .local v1, "input":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v0, v1}, Lorg/acra/CrashReportData;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 986
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 988
    return-object v0

    .line 986
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v2
.end method

.method private retrieveCrashData(Landroid/content/Context;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 403
    :try_start_0
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/annotation/ReportsCrashes;

    move-result-object v1

    .line 404
    .local v1, "config":Lorg/acra/annotation/ReportsCrashes;
    invoke-interface {v1}, Lorg/acra/annotation/ReportsCrashes;->customReportContent()[Lorg/acra/ReportField;

    move-result-object v7

    .line 405
    .local v7, "fields":[Lorg/acra/ReportField;
    array-length v13, v7

    if-nez v13, :cond_1

    .line 406
    invoke-interface {v1}, Lorg/acra/annotation/ReportsCrashes;->mailTo()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    const-string v13, ""

    invoke-interface {v1}, Lorg/acra/annotation/ReportsCrashes;->mailTo()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_20

    .line 407
    :cond_0
    sget-object v7, Lorg/acra/ACRA;->DEFAULT_REPORT_FIELDS:[Lorg/acra/ReportField;

    .line 412
    :cond_1
    :goto_0
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 414
    .local v8, "fieldsList":Ljava/util/List;, "Ljava/util/List<Lorg/acra/ReportField;>;"
    invoke-static {}, Lorg/acra/ACRA;->getACRASharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v11

    .line 417
    .local v11, "prefs":Landroid/content/SharedPreferences;
    sget-object v13, Lorg/acra/ReportField;->REPORT_ID:Lorg/acra/ReportField;

    invoke-interface {v8, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 418
    sget-object v13, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v14, Lorg/acra/ReportField;->REPORT_ID:Lorg/acra/ReportField;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    :cond_2
    sget-object v13, Lorg/acra/ReportField;->DUMPSYS_MEMINFO:Lorg/acra/ReportField;

    invoke-interface {v8, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 423
    sget-object v13, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v14, Lorg/acra/ReportField;->DUMPSYS_MEMINFO:Lorg/acra/ReportField;

    invoke-static {}, Lorg/acra/DumpSysCollector;->collectMemInfo()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 429
    .local v10, "pm":Landroid/content/pm/PackageManager;
    if-eqz v10, :cond_8

    .line 430
    const-string v13, "acra.syslog.enable"

    const/4 v14, 0x1

    invoke-interface {v11, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_21

    const-string v13, "android.permission.READ_LOGS"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_21

    .line 432
    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v14, "READ_LOGS granted! ACRA can include LogCat and DropBox data."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    sget-object v13, Lorg/acra/ReportField;->LOGCAT:Lorg/acra/ReportField;

    invoke-interface {v8, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 434
    sget-object v13, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v14, Lorg/acra/ReportField;->LOGCAT:Lorg/acra/ReportField;

    const/4 v15, 0x0

    invoke-static {v15}, Lorg/acra/LogCatCollector;->collectLogCat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    :cond_4
    sget-object v13, Lorg/acra/ReportField;->EVENTSLOG:Lorg/acra/ReportField;

    invoke-interface {v8, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 437
    sget-object v13, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v14, Lorg/acra/ReportField;->EVENTSLOG:Lorg/acra/ReportField;

    const-string v15, "events"

    invoke-static {v15}, Lorg/acra/LogCatCollector;->collectLogCat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    :cond_5
    sget-object v13, Lorg/acra/ReportField;->RADIOLOG:Lorg/acra/ReportField;

    invoke-interface {v8, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 440
    sget-object v13, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v14, Lorg/acra/ReportField;->RADIOLOG:Lorg/acra/ReportField;

    const-string v15, "radio"

    invoke-static {v15}, Lorg/acra/LogCatCollector;->collectLogCat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    :cond_6
    sget-object v13, Lorg/acra/ReportField;->DROPBOX:Lorg/acra/ReportField;

    invoke-interface {v8, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 443
    sget-object v13, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v14, Lorg/acra/ReportField;->DROPBOX:Lorg/acra/ReportField;

    sget-object v15, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/annotation/ReportsCrashes;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/acra/annotation/ReportsCrashes;->additionalDropBoxTags()[Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lorg/acra/DropBoxCollector;->read(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    :cond_7
    :goto_1
    sget-object v13, Lorg/acra/ReportField;->DEVICE_ID:Lorg/acra/ReportField;

    invoke-interface {v8, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const-string v13, "acra.deviceid.enable"

    const/4 v14, 0x1

    invoke-interface {v11, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_8

    const-string v13, "android.permission.READ_PHONE_STATE"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_8

    .line 454
    const-string v13, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 455
    .local v12, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 456
    .local v4, "deviceId":Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 457
    sget-object v13, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v14, Lorg/acra/ReportField;->DEVICE_ID:Lorg/acra/ReportField;

    invoke-virtual {v13, v14, v4}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    .end local v4    # "deviceId":Ljava/lang/String;
    .end local v12    # "tm":Landroid/telephony/TelephonyManager;
    :cond_8
    sget-object v13, Lorg/acra/ReportField;->INSTALLATION_ID:Lorg/acra/ReportField;

    invoke-interface {v8, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 464
    sget-object v13, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v14, Lorg/acra/ReportField;->INSTALLATION_ID:Lorg/acra/ReportField;

    sget-object v15, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lorg/acra/util/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    :cond_9
    sget-object v13, Lorg/acra/ReportField;->INITIAL_CONFIGURATION:Lorg/acra/ReportField;

    invoke-interface {v8, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 469
    sget-object v13, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v14, Lorg/acra/ReportField;->INITIAL_CONFIGURATION:Lorg/acra/ReportField;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/acra/ErrorReporter;->mInitialConfiguration:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    :cond_a
    sget-object v13, Lorg/acra/ReportField;->CRASH_CONFIGURATION:Lorg/acra/ReportField;

    invoke-interface {v8, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 472
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 473
    .local v2, "crashConf":Landroid/content/res/Configuration;
    sget-object v13, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v14, Lorg/acra/ReportField;->CRASH_CONFIGURATION:Lorg/acra/ReportField;

    invoke-static {v2}, Lorg/acra/ConfigurationInspector;->toString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    .end local v2    # "crashConf":Landroid/content/res/Configuration;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 478
    .local v9, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v9, :cond_23

    .line 480
    sget-object v13, Lorg/acra/ReportField;->APP_VERSION_CODE:Lorg/acra/ReportField;

    invoke-interface {v8, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 481
    sget-object v13, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v14, Lorg/acra/ReportField;->APP_VERSION_CODE:Lorg/acra/ReportField;

    iget v15, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    :cond_c
    sget-object v13, Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;

    invoke-interface {v8, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 484
    sget-object v14, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v15, Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;

    iget-object v13, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v13, :cond_22

    iget-object v13, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_2
    invoke-virtual {v14, v15, v13}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    :cond_d
    :goto_3
    sget-object v13, Lorg/acra/ReportField;->PACKAGE_NAME:Lorg/acra/ReportField;

    invoke-interface {v8, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 493
    sget-object v13, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v14, Lorg/acra/ReportField;->PACKAGE_NAME:Lorg/acra/ReportField;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    :cond_e
    sget-object v13, Lorg/acra/ReportField;->BUILD:Lorg/acra/ReportField;

    invoke-interface {v8, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 498
    sget-object v13, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v14, Lorg/acra/ReportField;->BUILD:Lorg/acra/ReportField;

    const-class v15, Landroid/os/Build;

    invoke-static {v15}, Lorg/acra/ReflectionCollector;->collectConstants(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    :cond_f
    sget-object v13, Lorg/acra/ReportField;->PHONE_MODEL:Lorg/acra/ReportField;

    invoke-interface {v8, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 503
    sget-object v13, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v14, Lorg/acra/ReportField;->PHONE_MODEL:Lorg/acra/ReportField;

    sget-object v15, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    :cond_10
    sget-object v13, Lorg/acra/ReportField;->ANDROID_VERSION:Lorg/acra/ReportField;

    invoke-interface {v8, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 507
    sget-object v13, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v14, Lorg/acra/ReportField;->ANDROID_VERSION:Lorg/acra/ReportField;

    sget-object v15, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    :cond_11
    sget-object v13, Lorg/acra/ReportField;->BRAND:Lorg/acra/ReportField;

    invoke-interface {v8, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 512
    sget-object v13, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v14, Lorg/acra/ReportField;->BRAND:Lorg/acra/ReportField;

    sget-object v15, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    :cond_12
    sget-object v13, Lorg/acra/ReportField;->PRODUCT:Lorg/acra/ReportField;

    invoke-interface {v8, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 515
    sget-object v13, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v14, Lorg/acra/ReportField;->PRODUCT:Lorg/acra/ReportField;

    sget-object v15, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    :cond_13
    sget-object v13, Lorg/acra/ReportField;->TOTAL_MEM_SIZE:Lorg/acra/ReportField;

    invoke-interface {v8, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 520
    sget-object v13, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v14, Lorg/acra/ReportField;->TOTAL_MEM_SIZE:Lorg/acra/ReportField;

    invoke-static {}, Lorg/acra/ErrorReporter;->getTotalInternalMemorySize()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    :cond_14
    sget-object v13, Lorg/acra/ReportField;->AVAILABLE_MEM_SIZE:Lorg/acra/ReportField;

    invoke-interface {v8, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 523
    sget-object v13, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v14, Lorg/acra/ReportField;->AVAILABLE_MEM_SIZE:Lorg/acra/ReportField;

    invoke-static {}, Lorg/acra/ErrorReporter;->getAvailableInternalMemorySize()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    :cond_15
    sget-object v13, Lorg/acra/ReportField;->FILE_PATH:Lorg/acra/ReportField;

    invoke-interface {v8, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 528
    sget-object v13, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v14, Lorg/acra/ReportField;->FILE_PATH:Lorg/acra/ReportField;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    :cond_16
    sget-object v13, Lorg/acra/ReportField;->DISPLAY:Lorg/acra/ReportField;

    invoke-interface {v8, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 533
    const-string v13, "window"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager;

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 535
    .local v5, "display":Landroid/view/Display;
    sget-object v13, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v14, Lorg/acra/ReportField;->DISPLAY:Lorg/acra/ReportField;

    invoke-static {v5}, Lorg/acra/ErrorReporter;->toString(Landroid/view/Display;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    .end local v5    # "display":Landroid/view/Display;
    :cond_17
    sget-object v13, Lorg/acra/ReportField;->USER_CRASH_DATE:Lorg/acra/ReportField;

    invoke-interface {v8, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 540
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 541
    .local v3, "curDate":Landroid/text/format/Time;
    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 542
    sget-object v13, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v14, Lorg/acra/ReportField;->USER_CRASH_DATE:Lorg/acra/ReportField;

    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    .end local v3    # "curDate":Landroid/text/format/Time;
    :cond_18
    sget-object v13, Lorg/acra/ReportField;->CUSTOM_DATA:Lorg/acra/ReportField;

    invoke-interface {v8, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19

    .line 547
    sget-object v13, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v14, Lorg/acra/ReportField;->CUSTOM_DATA:Lorg/acra/ReportField;

    invoke-direct/range {p0 .. p0}, Lorg/acra/ErrorReporter;->createCustomInfoString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    :cond_19
    sget-object v13, Lorg/acra/ReportField;->USER_EMAIL:Lorg/acra/ReportField;

    invoke-interface {v8, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 552
    sget-object v13, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v14, Lorg/acra/ReportField;->USER_EMAIL:Lorg/acra/ReportField;

    const-string v15, "acra.user.email"

    const-string v16, "N/A"

    move-object/from16 v0, v16

    invoke-interface {v11, v15, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    :cond_1a
    sget-object v13, Lorg/acra/ReportField;->DEVICE_FEATURES:Lorg/acra/ReportField;

    invoke-interface {v8, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 557
    sget-object v13, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v14, Lorg/acra/ReportField;->DEVICE_FEATURES:Lorg/acra/ReportField;

    invoke-static/range {p1 .. p1}, Lorg/acra/DeviceFeaturesCollector;->getFeatures(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    :cond_1b
    sget-object v13, Lorg/acra/ReportField;->ENVIRONMENT:Lorg/acra/ReportField;

    invoke-interface {v8, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 562
    sget-object v13, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v14, Lorg/acra/ReportField;->ENVIRONMENT:Lorg/acra/ReportField;

    const-class v15, Landroid/os/Environment;

    invoke-static {v15}, Lorg/acra/ReflectionCollector;->collectStaticGettersResults(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    :cond_1c
    sget-object v13, Lorg/acra/ReportField;->SETTINGS_SYSTEM:Lorg/acra/ReportField;

    invoke-interface {v8, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 567
    sget-object v13, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v14, Lorg/acra/ReportField;->SETTINGS_SYSTEM:Lorg/acra/ReportField;

    sget-object v15, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lorg/acra/SettingsCollector;->collectSystemSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    :cond_1d
    sget-object v13, Lorg/acra/ReportField;->SETTINGS_SECURE:Lorg/acra/ReportField;

    invoke-interface {v8, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 572
    sget-object v13, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v14, Lorg/acra/ReportField;->SETTINGS_SECURE:Lorg/acra/ReportField;

    sget-object v15, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lorg/acra/SettingsCollector;->collectSecureSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    :cond_1e
    sget-object v13, Lorg/acra/ReportField;->SHARED_PREFERENCES:Lorg/acra/ReportField;

    invoke-interface {v8, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1f

    .line 577
    sget-object v13, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v14, Lorg/acra/ReportField;->SHARED_PREFERENCES:Lorg/acra/ReportField;

    sget-object v15, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lorg/acra/SharedPreferencesCollector;->collect(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    .end local v1    # "config":Lorg/acra/annotation/ReportsCrashes;
    .end local v7    # "fields":[Lorg/acra/ReportField;
    .end local v8    # "fieldsList":Ljava/util/List;, "Ljava/util/List<Lorg/acra/ReportField;>;"
    .end local v9    # "pi":Landroid/content/pm/PackageInfo;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v11    # "prefs":Landroid/content/SharedPreferences;
    :cond_1f
    :goto_4
    return-void

    .line 408
    .restart local v1    # "config":Lorg/acra/annotation/ReportsCrashes;
    .restart local v7    # "fields":[Lorg/acra/ReportField;
    :cond_20
    const-string v13, ""

    invoke-interface {v1}, Lorg/acra/annotation/ReportsCrashes;->mailTo()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 409
    sget-object v7, Lorg/acra/ACRA;->DEFAULT_MAIL_REPORT_FIELDS:[Lorg/acra/ReportField;

    goto/16 :goto_0

    .line 447
    .restart local v8    # "fieldsList":Ljava/util/List;, "Ljava/util/List<Lorg/acra/ReportField;>;"
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v11    # "prefs":Landroid/content/SharedPreferences;
    :cond_21
    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v14, "READ_LOGS not allowed. ACRA will not include LogCat and DropBox data."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 580
    .end local v1    # "config":Lorg/acra/annotation/ReportsCrashes;
    .end local v7    # "fields":[Lorg/acra/ReportField;
    .end local v8    # "fieldsList":Ljava/util/List;, "Ljava/util/List<Lorg/acra/ReportField;>;"
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v11    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v6

    .line 581
    .local v6, "e":Ljava/lang/Exception;
    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v14, "Error while retrieving crash data"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 484
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v1    # "config":Lorg/acra/annotation/ReportsCrashes;
    .restart local v7    # "fields":[Lorg/acra/ReportField;
    .restart local v8    # "fieldsList":Ljava/util/List;, "Ljava/util/List<Lorg/acra/ReportField;>;"
    .restart local v9    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v11    # "prefs":Landroid/content/SharedPreferences;
    :cond_22
    :try_start_1
    const-string v13, "not set"

    goto/16 :goto_2

    .line 488
    :cond_23
    sget-object v13, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v14, Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;

    const-string v15, "Package info unavailable"

    invoke-virtual {v13, v14, v15}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method private static saveCrashReportFile(Ljava/lang/String;Lorg/acra/CrashReportData;)Ljava/lang/String;
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "crashData"    # Lorg/acra/CrashReportData;

    .prologue
    .line 878
    :try_start_0
    sget-object v6, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Writing crash report file."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    if-nez p1, :cond_0

    .line 880
    sget-object p1, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    .line 882
    :cond_0
    if-nez p0, :cond_1

    .line 883
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 884
    .local v2, "now":Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 885
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 886
    .local v4, "timestamp":J
    sget-object v6, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    invoke-virtual {p1, v6}, Lorg/acra/CrashReportData;->getProperty(Lorg/acra/ReportField;)Ljava/lang/String;

    move-result-object v1

    .line 887
    .local v1, "isSilent":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v1, :cond_2

    sget-object v6, Lorg/acra/ErrorReporter;->SILENT_SUFFIX:Ljava/lang/String;

    :goto_0
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".stacktrace"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 889
    .end local v1    # "isSilent":Ljava/lang/String;
    .end local v2    # "now":Landroid/text/format/Time;
    .end local v4    # "timestamp":J
    :cond_1
    sget-object v6, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v6, p0, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 891
    .local v3, "reportFile":Ljava/io/FileOutputStream;
    :try_start_1
    const-string v6, ""

    invoke-virtual {p1, v3, v6}, Lorg/acra/CrashReportData;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 893
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 899
    .end local v3    # "reportFile":Ljava/io/FileOutputStream;
    .end local p0    # "fileName":Ljava/lang/String;
    :goto_1
    return-object p0

    .line 887
    .restart local v1    # "isSilent":Ljava/lang/String;
    .restart local v2    # "now":Landroid/text/format/Time;
    .restart local v4    # "timestamp":J
    .restart local p0    # "fileName":Ljava/lang/String;
    :cond_2
    const-string v6, ""

    goto :goto_0

    .line 893
    .end local v1    # "isSilent":Ljava/lang/String;
    .end local v2    # "now":Landroid/text/format/Time;
    .end local v4    # "timestamp":J
    .restart local v3    # "reportFile":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v6

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 896
    .end local v3    # "reportFile":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 897
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v7, "An error occured while writing the report file..."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 899
    const/4 p0, 0x0

    goto :goto_1
.end method

.method private static sendCrashReport(Landroid/content/Context;Lorg/acra/CrashReportData;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "errorContent"    # Lorg/acra/CrashReportData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/acra/sender/ReportSenderException;
        }
    .end annotation

    .prologue
    .line 847
    const/4 v3, 0x0

    .line 848
    .local v3, "sentAtLeastOnce":Z
    sget-object v4, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/acra/sender/ReportSender;

    .line 850
    .local v2, "sender":Lorg/acra/sender/ReportSender;
    :try_start_0
    invoke-interface {v2, p1}, Lorg/acra/sender/ReportSender;->send(Lorg/acra/CrashReportData;)V
    :try_end_0
    .catch Lorg/acra/sender/ReportSenderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    const/4 v3, 0x1

    goto :goto_0

    .line 854
    :catch_0
    move-exception v0

    .line 855
    .local v0, "e":Lorg/acra/sender/ReportSenderException;
    if-nez v3, :cond_0

    .line 856
    throw v0

    .line 858
    :cond_0
    sget-object v4, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ReportSender of class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed but other senders completed their task. ACRA will not send this report again."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 863
    .end local v0    # "e":Lorg/acra/sender/ReportSenderException;
    .end local v2    # "sender":Lorg/acra/sender/ReportSender;
    :cond_1
    return-void
.end method

.method private static toString(Landroid/view/Display;)Ljava/lang/String;
    .locals 5
    .param p0, "display"    # Landroid/view/Display;

    .prologue
    const/16 v4, 0xa

    .line 594
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 595
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    .local v1, "result":Ljava/lang/StringBuilder;
    const-string v2, "width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "pixelFormat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/Display;->getPixelFormat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "refreshRate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "fps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.density=x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.scaledDensity=x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.widthPixels="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.heightPixels="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.xdpi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.ydpi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 605
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public addCustomData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mCustomParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    return-void
.end method

.method public addReportSender(Lorg/acra/sender/ReportSender;)V
    .locals 1
    .param p1, "sender"    # Lorg/acra/sender/ReportSender;

    .prologue
    .line 1224
    sget-object v0, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1225
    return-void
.end method

.method public approvePendingReports()V
    .locals 9

    .prologue
    .line 245
    sget-object v7, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Mark all pending reports as approved."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->getCrashReportFilesList()[Ljava/lang/String;

    move-result-object v6

    .line 247
    .local v6, "reportFileNames":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 249
    .local v4, "reportFile":Ljava/io/File;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 250
    .local v5, "reportFileName":Ljava/lang/String;
    invoke-direct {p0, v5}, Lorg/acra/ErrorReporter;->isApproved(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 251
    new-instance v4, Ljava/io/File;

    .end local v4    # "reportFile":Ljava/io/File;
    sget-object v7, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-direct {v4, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 252
    .restart local v4    # "reportFile":Ljava/io/File;
    const-string v7, ".stacktrace"

    const-string v8, "-approved.stacktrace"

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "newName":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    sget-object v8, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 249
    .end local v3    # "newName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    .end local v5    # "reportFileName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method declared-synchronized checkAndSendReports(Landroid/content/Context;Z)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sendOnlySilentReports"    # Z

    .prologue
    .line 942
    monitor-enter p0

    :try_start_0
    sget-object v8, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v9, "#checkAndSendReports - start"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->getCrashReportFilesList()[Ljava/lang/String;

    move-result-object v6

    .line 944
    .local v6, "reportFiles":[Ljava/lang/String;
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 946
    const/4 v7, 0x0

    .line 948
    .local v7, "reportsSentCount":I
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 949
    .local v1, "curFileName":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-direct {p0, v1}, Lorg/acra/ErrorReporter;->isSilent(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 948
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 953
    :cond_0
    const/4 v8, 0x5

    if-lt v7, v8, :cond_2

    .line 976
    .end local v1    # "curFileName":Ljava/lang/String;
    :cond_1
    :goto_2
    sget-object v8, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v9, "#checkAndSendReports - finish"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    monitor-exit p0

    return-void

    .line 957
    .restart local v1    # "curFileName":Ljava/lang/String;
    :cond_2
    :try_start_1
    sget-object v8, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sending file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 959
    :try_start_2
    invoke-direct {p0, p1, v1}, Lorg/acra/ErrorReporter;->loadCrashReport(Landroid/content/Context;Ljava/lang/String;)Lorg/acra/CrashReportData;

    move-result-object v5

    .line 960
    .local v5, "previousCrashReport":Lorg/acra/CrashReportData;
    invoke-static {p1, v5}, Lorg/acra/ErrorReporter;->sendCrashReport(Landroid/content/Context;Lorg/acra/CrashReportData;)V

    .line 961
    invoke-direct {p0, p1, v1}, Lorg/acra/ErrorReporter;->deleteFile(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/acra/sender/ReportSenderException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 974
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 962
    .end local v5    # "previousCrashReport":Lorg/acra/CrashReportData;
    :catch_0
    move-exception v2

    .line 963
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_3
    sget-object v8, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Failed to send crash reports"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 964
    invoke-direct {p0, p1, v1}, Lorg/acra/ErrorReporter;->deleteFile(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 942
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "curFileName":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "reportFiles":[Ljava/lang/String;
    .end local v7    # "reportsSentCount":I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 966
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "curFileName":Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v6    # "reportFiles":[Ljava/lang/String;
    .restart local v7    # "reportsSentCount":I
    :catch_1
    move-exception v2

    .line 967
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    sget-object v8, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to load crash report for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 968
    invoke-direct {p0, p1, v1}, Lorg/acra/ErrorReporter;->deleteFile(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 970
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 971
    .local v2, "e":Lorg/acra/sender/ReportSenderException;
    sget-object v8, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to send crash report for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public checkReportsOnApplicationStart()V
    .locals 5

    .prologue
    .line 1012
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->getCrashReportFilesList()[Ljava/lang/String;

    move-result-object v0

    .line 1013
    .local v0, "filesList":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v2, v0

    if-lez v2, :cond_2

    .line 1014
    invoke-direct {p0, v0}, Lorg/acra/ErrorReporter;->containsOnlySilentOrApprovedReports([Ljava/lang/String;)Z

    move-result v1

    .line 1018
    .local v1, "onlySilentOrApprovedReports":Z
    iget-object v2, p0, Lorg/acra/ErrorReporter;->mReportingInteractionMode:Lorg/acra/ReportingInteractionMode;

    sget-object v3, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lorg/acra/ErrorReporter;->mReportingInteractionMode:Lorg/acra/ReportingInteractionMode;

    sget-object v3, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lorg/acra/ErrorReporter;->mReportingInteractionMode:Lorg/acra/ReportingInteractionMode;

    sget-object v3, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-ne v2, v3, :cond_3

    if-eqz v1, :cond_3

    .line 1022
    :cond_0
    iget-object v2, p0, Lorg/acra/ErrorReporter;->mReportingInteractionMode:Lorg/acra/ReportingInteractionMode;

    sget-object v3, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-ne v2, v3, :cond_1

    if-nez v1, :cond_1

    .line 1025
    sget-object v2, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/annotation/ReportsCrashes;

    move-result-object v3

    invoke-interface {v3}, Lorg/acra/annotation/ReportsCrashes;->resToastText()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1028
    :cond_1
    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "About to start ReportSenderWorker from #checkReportOnApplicationStart"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    new-instance v2, Lorg/acra/ErrorReporter$ReportsSenderWorker;

    invoke-direct {v2, p0}, Lorg/acra/ErrorReporter$ReportsSenderWorker;-><init>(Lorg/acra/ErrorReporter;)V

    invoke-virtual {v2}, Lorg/acra/ErrorReporter$ReportsSenderWorker;->start()V

    .line 1046
    .end local v1    # "onlySilentOrApprovedReports":Z
    :cond_2
    :goto_0
    return-void

    .line 1030
    .restart local v1    # "onlySilentOrApprovedReports":Z
    :cond_3
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/annotation/ReportsCrashes;

    move-result-object v2

    invoke-interface {v2}, Lorg/acra/annotation/ReportsCrashes;->deleteUnapprovedReportsOnApplicationStart()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1035
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/acra/ErrorReporter;->deletePendingNonApprovedReports()V

    goto :goto_0

    .line 1042
    :cond_4
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v2

    invoke-direct {p0, v0}, Lorg/acra/ErrorReporter;->getLatestNonSilentReport([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/acra/ErrorReporter;->notifySendReport(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deletePendingNonApprovedReports()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1090
    iget-object v3, p0, Lorg/acra/ErrorReporter;->mReportingInteractionMode:Lorg/acra/ReportingInteractionMode;

    sget-object v4, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-ne v3, v4, :cond_0

    move v0, v1

    .line 1091
    .local v0, "nbReportsToKeep":I
    :goto_0
    invoke-direct {p0, v2, v1, v0}, Lorg/acra/ErrorReporter;->deletePendingReports(ZZI)V

    .line 1092
    return-void

    .end local v0    # "nbReportsToKeep":I
    :cond_0
    move v0, v2

    .line 1090
    goto :goto_0
.end method

.method public deletePendingReports()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1074
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Lorg/acra/ErrorReporter;->deletePendingReports(ZZI)V

    .line 1075
    return-void
.end method

.method public deletePendingSilentReports()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1081
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v1}, Lorg/acra/ErrorReporter;->deletePendingReports(ZZI)V

    .line 1082
    return-void
.end method

.method public disable()V
    .locals 3

    .prologue
    .line 1123
    sget-object v0, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 1124
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACRA is disabled for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :goto_0
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 1130
    const/4 v0, 0x0

    sput-boolean v0, Lorg/acra/ErrorReporter;->enabled:Z

    .line 1132
    :cond_0
    return-void

    .line 1126
    :cond_1
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ACRA is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getCrashReportFilesList()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 908
    sget-object v3, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 909
    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Trying to get ACRA reports but ACRA is not initialized."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    new-array v2, v6, [Ljava/lang/String;

    .line 928
    :cond_0
    :goto_0
    return-object v2

    .line 913
    :cond_1
    sget-object v3, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 914
    .local v0, "dir":Ljava/io/File;
    if-eqz v0, :cond_2

    .line 915
    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Looking for error files in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    new-instance v1, Lorg/acra/ErrorReporter$2;

    invoke-direct {v1, p0}, Lorg/acra/ErrorReporter$2;-><init>(Lorg/acra/ErrorReporter;)V

    .line 923
    .local v1, "filter":Ljava/io/FilenameFilter;
    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    .line 924
    .local v2, "result":[Ljava/lang/String;
    if-nez v2, :cond_0

    new-array v2, v6, [Ljava/lang/String;

    goto :goto_0

    .line 926
    .end local v1    # "filter":Ljava/io/FilenameFilter;
    .end local v2    # "result":[Ljava/lang/String;
    :cond_2
    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Application files directory does not exist! The application may not be installed correctly. Please try reinstalling."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    new-array v2, v6, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getCustomData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 315
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mCustomParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public handleException(Ljava/lang/Throwable;)Lorg/acra/ErrorReporter$ReportsSenderWorker;
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 773
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mReportingInteractionMode:Lorg/acra/ReportingInteractionMode;

    invoke-virtual {p0, p1, v0}, Lorg/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Lorg/acra/ReportingInteractionMode;)Lorg/acra/ErrorReporter$ReportsSenderWorker;

    move-result-object v0

    return-object v0
.end method

.method handleException(Ljava/lang/Throwable;Lorg/acra/ReportingInteractionMode;)Lorg/acra/ErrorReporter$ReportsSenderWorker;
    .locals 9
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "reportingInteractionMode"    # Lorg/acra/ReportingInteractionMode;

    .prologue
    const/4 v5, 0x0

    .line 681
    const/4 v4, 0x0

    .line 683
    .local v4, "sendOnlySilentReports":Z
    if-nez p2, :cond_4

    .line 686
    iget-object p2, p0, Lorg/acra/ErrorReporter;->mReportingInteractionMode:Lorg/acra/ReportingInteractionMode;

    .line 698
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 699
    new-instance p1, Ljava/lang/Exception;

    .end local p1    # "e":Ljava/lang/Throwable;
    const-string v6, "Report requested by developer"

    invoke-direct {p1, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 702
    .restart local p1    # "e":Ljava/lang/Throwable;
    :cond_1
    sget-object v6, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-eq p2, v6, :cond_2

    sget-object v6, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-ne p2, v6, :cond_3

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/annotation/ReportsCrashes;

    move-result-object v6

    invoke-interface {v6}, Lorg/acra/annotation/ReportsCrashes;->resToastText()I

    move-result v6

    if-eqz v6, :cond_3

    .line 705
    :cond_2
    new-instance v6, Lorg/acra/ErrorReporter$1;

    invoke-direct {v6, p0}, Lorg/acra/ErrorReporter$1;-><init>(Lorg/acra/ErrorReporter;)V

    invoke-virtual {v6}, Lorg/acra/ErrorReporter$1;->start()V

    .line 722
    :cond_3
    sget-object v6, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lorg/acra/ErrorReporter;->retrieveCrashData(Landroid/content/Context;)V

    .line 725
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 726
    .local v3, "result":Ljava/io/Writer;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 727
    .local v1, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 728
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 731
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 732
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_1
    if-eqz v0, :cond_5

    .line 733
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 734
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1

    .line 692
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v1    # "printWriter":Ljava/io/PrintWriter;
    .end local v3    # "result":Ljava/io/Writer;
    :cond_4
    sget-object v6, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-ne p2, v6, :cond_0

    iget-object v6, p0, Lorg/acra/ErrorReporter;->mReportingInteractionMode:Lorg/acra/ReportingInteractionMode;

    sget-object v7, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-eq v6, v7, :cond_0

    .line 694
    const/4 v4, 0x1

    goto :goto_0

    .line 736
    .restart local v0    # "cause":Ljava/lang/Throwable;
    .restart local v1    # "printWriter":Ljava/io/PrintWriter;
    .restart local v3    # "result":Ljava/io/Writer;
    :cond_5
    sget-object v6, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v7, Lorg/acra/ReportField;->STACK_TRACE:Lorg/acra/ReportField;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 740
    invoke-static {v5, v5}, Lorg/acra/ErrorReporter;->saveCrashReportFile(Ljava/lang/String;Lorg/acra/CrashReportData;)Ljava/lang/String;

    move-result-object v2

    .line 743
    .local v2, "reportFileName":Ljava/lang/String;
    sget-object v6, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v7, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    invoke-virtual {v6, v7}, Lorg/acra/CrashReportData;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    sget-object v6, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v7, Lorg/acra/ReportField;->USER_COMMENT:Lorg/acra/ReportField;

    invoke-virtual {v6, v7}, Lorg/acra/CrashReportData;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    sget-object v6, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-eq p2, v6, :cond_6

    sget-object v6, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-eq p2, v6, :cond_6

    invoke-static {}, Lorg/acra/ACRA;->getACRASharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "acra.alwaysaccept"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 750
    :cond_6
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->approvePendingReports()V

    .line 752
    new-instance v5, Lorg/acra/ErrorReporter$ReportsSenderWorker;

    invoke-direct {v5, p0, v4}, Lorg/acra/ErrorReporter$ReportsSenderWorker;-><init>(Lorg/acra/ErrorReporter;Z)V

    .line 753
    .local v5, "wk":Lorg/acra/ErrorReporter$ReportsSenderWorker;
    sget-object v6, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v7, "About to start ReportSenderWorker from #handleException"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-virtual {v5}, Lorg/acra/ErrorReporter$ReportsSenderWorker;->start()V

    .line 761
    .end local v5    # "wk":Lorg/acra/ErrorReporter$ReportsSenderWorker;
    :cond_7
    :goto_2
    return-object v5

    .line 757
    :cond_8
    sget-object v6, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-ne p2, v6, :cond_7

    .line 759
    invoke-virtual {p0, v2}, Lorg/acra/ErrorReporter;->notifySendReport(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public handleSilentException(Ljava/lang/Throwable;)Ljava/lang/Thread;
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 787
    sget-boolean v1, Lorg/acra/ErrorReporter;->enabled:Z

    if-eqz v1, :cond_0

    .line 788
    sget-object v1, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v2, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    sget-object v1, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    invoke-virtual {p0, p1, v1}, Lorg/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Lorg/acra/ReportingInteractionMode;)Lorg/acra/ErrorReporter$ReportsSenderWorker;

    move-result-object v0

    .line 793
    :goto_0
    return-object v0

    .line 792
    :cond_0
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "ACRA is disabled. Silent report not sent."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 357
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_0

    .line 358
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 359
    const/4 v0, 0x1

    sput-boolean v0, Lorg/acra/ErrorReporter;->enabled:Z

    .line 360
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 361
    sput-object p1, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    .line 363
    sget-object v0, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lorg/acra/ConfigurationInspector;->toString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ErrorReporter;->mInitialConfiguration:Ljava/lang/String;

    .line 365
    :cond_0
    return-void
.end method

.method notifySendReport(Ljava/lang/String;)V
    .locals 14
    .param p1, "reportFileName"    # Ljava/lang/String;

    .prologue
    .line 807
    sget-object v11, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const-string v12, "notification"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 810
    .local v7, "notificationManager":Landroid/app/NotificationManager;
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/annotation/ReportsCrashes;

    move-result-object v0

    .line 813
    .local v0, "conf":Lorg/acra/annotation/ReportsCrashes;
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resNotifIcon()I

    move-result v4

    .line 815
    .local v4, "icon":I
    sget-object v11, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resNotifTickerText()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 816
    .local v8, "tickerText":Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 817
    .local v9, "when":J
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5, v4, v8, v9, v10}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 819
    .local v5, "notification":Landroid/app/Notification;
    sget-object v11, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resNotifTitle()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 820
    .local v3, "contentTitle":Ljava/lang/CharSequence;
    sget-object v11, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resNotifText()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 822
    .local v2, "contentText":Ljava/lang/CharSequence;
    new-instance v6, Landroid/content/Intent;

    sget-object v11, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const-class v12, Lorg/acra/CrashReportDialog;

    invoke-direct {v6, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 823
    .local v6, "notificationIntent":Landroid/content/Intent;
    sget-object v11, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Creating Notification for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const-string v11, "REPORT_FILE_NAME"

    invoke-virtual {v6, v11, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 825
    sget-object v11, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    const/high16 v13, 0x8000000

    invoke-static {v11, v12, v6, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 828
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    sget-object v11, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v11, v3, v2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 831
    invoke-virtual {v7}, Landroid/app/NotificationManager;->cancelAll()V

    .line 832
    const/16 v11, 0x29a

    invoke-virtual {v7, v11, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 833
    return-void
.end method

.method public putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 289
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mCustomParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public removeAllReportSenders()V
    .locals 1

    .prologue
    .line 1257
    sget-object v0, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1258
    return-void
.end method

.method public removeCustomData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 302
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mCustomParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public removeReportSender(Lorg/acra/sender/ReportSender;)V
    .locals 1
    .param p1, "sender"    # Lorg/acra/sender/ReportSender;

    .prologue
    .line 1234
    sget-object v0, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1235
    return-void
.end method

.method public removeReportSenders(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1243
    .local p1, "senderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Lorg/acra/sender/ReportSender;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1244
    sget-object v2, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/acra/sender/ReportSender;

    .line 1245
    .local v1, "sender":Lorg/acra/sender/ReportSender;
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1246
    sget-object v2, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1250
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "sender":Lorg/acra/sender/ReportSender;
    :cond_1
    return-void
.end method

.method public setAppStartDate(Landroid/text/format/Time;)V
    .locals 3
    .param p1, "appStartDate"    # Landroid/text/format/Time;

    .prologue
    .line 1277
    sget-object v0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v1, Lorg/acra/ReportField;->USER_APP_START_DATE:Lorg/acra/ReportField;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    return-void
.end method

.method public setReportSender(Lorg/acra/sender/ReportSender;)V
    .locals 0
    .param p1, "sender"    # Lorg/acra/sender/ReportSender;

    .prologue
    .line 1266
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->removeAllReportSenders()V

    .line 1267
    invoke-virtual {p0, p1}, Lorg/acra/ErrorReporter;->addReportSender(Lorg/acra/sender/ReportSender;)V

    .line 1268
    return-void
.end method

.method setReportingInteractionMode(Lorg/acra/ReportingInteractionMode;)V
    .locals 0
    .param p1, "reportingInteractionMode"    # Lorg/acra/ReportingInteractionMode;

    .prologue
    .line 1005
    iput-object p1, p0, Lorg/acra/ErrorReporter;->mReportingInteractionMode:Lorg/acra/ReportingInteractionMode;

    .line 1006
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    const/16 v8, 0xa

    .line 614
    sget-object v5, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACRA caught a "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exception for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Building report."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    sget-object v5, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v6, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    invoke-virtual {v5, v6}, Lorg/acra/CrashReportData;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    invoke-virtual {p0, p2}, Lorg/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;)Lorg/acra/ErrorReporter$ReportsSenderWorker;

    move-result-object v4

    .line 624
    .local v4, "worker":Lorg/acra/ErrorReporter$ReportsSenderWorker;
    iget-object v5, p0, Lorg/acra/ErrorReporter;->mReportingInteractionMode:Lorg/acra/ReportingInteractionMode;

    sget-object v6, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-ne v5, v6, :cond_0

    .line 627
    const-wide/16 v5, 0xfa0

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 633
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 634
    :goto_1
    invoke-virtual {v4}, Lorg/acra/ErrorReporter$ReportsSenderWorker;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 638
    const-wide/16 v5, 0x64

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 639
    :catch_0
    move-exception v1

    .line 640
    .local v1, "e1":Ljava/lang/InterruptedException;
    sget-object v5, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Error : "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 628
    .end local v1    # "e1":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 629
    .restart local v1    # "e1":Ljava/lang/InterruptedException;
    sget-object v5, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Error : "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 645
    .end local v1    # "e1":Ljava/lang/InterruptedException;
    :cond_1
    iget-object v5, p0, Lorg/acra/ErrorReporter;->mReportingInteractionMode:Lorg/acra/ReportingInteractionMode;

    sget-object v6, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lorg/acra/ErrorReporter;->mReportingInteractionMode:Lorg/acra/ReportingInteractionMode;

    sget-object v6, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-ne v5, v6, :cond_3

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/annotation/ReportsCrashes;

    move-result-object v5

    invoke-interface {v5}, Lorg/acra/annotation/ReportsCrashes;->forceCloseDialogAfterToast()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 650
    :cond_2
    iget-object v5, p0, Lorg/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v5, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 667
    :goto_2
    return-void

    .line 655
    :cond_3
    const-string v0, "Application"

    .line 657
    .local v0, "appName":Ljava/lang/CharSequence;
    :try_start_2
    sget-object v5, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 658
    .local v3, "pm":Landroid/content/pm/PackageManager;
    sget-object v5, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    sget-object v6, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 659
    sget-object v5, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " fatal error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 663
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    .line 664
    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    goto :goto_2

    .line 660
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_2
    move-exception v2

    .line 661
    .local v2, "e2":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    sget-object v5, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Error : "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 663
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    .line 664
    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    goto :goto_2

    .line 663
    .end local v2    # "e2":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V

    .line 664
    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    throw v5
.end method
