.class Lcom/android/server/am/ActivityManagerService$17;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;

.field final synthetic val$errorHandlingInfo:Lcom/android/server/am/ActivityManagerService$ErrorHandlingInfo;

.field final synthetic val$eventType:Ljava/lang/String;

.field final synthetic val$logFile:Ljava/io/File;

.field final synthetic val$processName:Ljava/lang/String;

.field final synthetic val$report:Ljava/lang/String;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/io/File;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;Landroid/os/DropBoxManager;Lcom/android/server/am/ActivityManagerService$ErrorHandlingInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 10052
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$17;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$17;->val$report:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$17;->val$sb:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$17;->val$logFile:Ljava/io/File;

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$17;->val$dropboxTag:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$17;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iput-object p8, p0, Lcom/android/server/am/ActivityManagerService$17;->val$dbox:Landroid/os/DropBoxManager;

    iput-object p9, p0, Lcom/android/server/am/ActivityManagerService$17;->val$errorHandlingInfo:Lcom/android/server/am/ActivityManagerService$ErrorHandlingInfo;

    iput-object p10, p0, Lcom/android/server/am/ActivityManagerService$17;->val$processName:Ljava/lang/String;

    iput-object p11, p0, Lcom/android/server/am/ActivityManagerService$17;->val$eventType:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 10055
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$17;->val$report:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 10056
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$17;->val$sb:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$17;->val$report:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10058
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$17;->val$logFile:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 10060
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$17;->val$dropboxTag:Ljava/lang/String;

    const-string v3, "system_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$17;->val$dropboxTag:Ljava/lang/String;

    const-string v3, "system_app"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 10062
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$17;->val$sb:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$17;->val$logFile:Ljava/io/File;

    const/high16 v4, 0x80000

    const-string v5, "\n\n[[TRUNCATED]]"

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 10072
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$17;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$17;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 10073
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$17;->val$sb:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$17;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v3, v3, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10076
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logcat_for_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$17;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 10077
    .local v13, "setting":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$17;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v13, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 10078
    .local v10, "lines":I
    if-lez v10, :cond_3

    .line 10079
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$17;->val$sb:Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10082
    const/4 v8, 0x0

    .line 10084
    .local v8, "input":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v0, Ljava/lang/ProcessBuilder;

    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "/system/bin/logcat"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "-v"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "time"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "-b"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "events"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "-b"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "system"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "-b"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "main"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "-t"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    .line 10088
    .local v11, "logcat":Ljava/lang/Process;
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10089
    :goto_1
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 10090
    :goto_2
    :try_start_4
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v11}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 10093
    .end local v8    # "input":Ljava/io/InputStreamReader;
    .local v9, "input":Ljava/io/InputStreamReader;
    const/16 v0, 0x2000

    :try_start_5
    new-array v6, v0, [C

    .line 10094
    .local v6, "buf":[C
    :goto_3
    invoke-virtual {v9, v6}, Ljava/io/Reader;->read([C)I

    move-result v12

    .local v12, "num":I
    if-lez v12, :cond_8

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$17;->val$sb:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v0, v6, v3, v12}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 10095
    .end local v6    # "buf":[C
    .end local v12    # "num":I
    :catch_0
    move-exception v7

    move-object v8, v9

    .line 10096
    .end local v9    # "input":Ljava/io/InputStreamReader;
    .end local v11    # "logcat":Ljava/lang/Process;
    .local v7, "e":Ljava/io/IOException;
    .restart local v8    # "input":Ljava/io/InputStreamReader;
    :goto_4
    :try_start_6
    const-string v0, "ActivityManager"

    const-string v3, "Error running logcat"

    invoke-static {v0, v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 10098
    if-eqz v8, :cond_3

    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 10102
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "input":Ljava/io/InputStreamReader;
    :cond_3
    :goto_5
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$17;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10103
    .local v2, "dboxText":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$17;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$17;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 10104
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$17;->val$errorHandlingInfo:Lcom/android/server/am/ActivityManagerService$ErrorHandlingInfo;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService$ErrorHandlingInfo;->mSystemDump:Z

    if-eqz v0, :cond_4

    .line 10106
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$17;->val$errorHandlingInfo:Lcom/android/server/am/ActivityManagerService$ErrorHandlingInfo;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService$ErrorHandlingInfo;->mSystemCrash:Z

    if-eqz v0, :cond_7

    .line 10107
    const-string v0, "%s (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$17;->val$processName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$17;->val$eventType:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 10111
    .local v1, "pn":Ljava/lang/String;
    :goto_6
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$17;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$17;->val$errorHandlingInfo:Lcom/android/server/am/ActivityManagerService$ErrorHandlingInfo;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService$ErrorHandlingInfo;->mSystemCrash:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$17;->val$errorHandlingInfo:Lcom/android/server/am/ActivityManagerService$ErrorHandlingInfo;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService$ErrorHandlingInfo;->mSystemAppCrash:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$17;->val$errorHandlingInfo:Lcom/android/server/am/ActivityManagerService$ErrorHandlingInfo;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService$ErrorHandlingInfo;->mDebugBuild:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    # invokes: Lcom/android/server/am/ActivityManagerService;->forceCrashDump(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 10117
    .end local v1    # "pn":Ljava/lang/String;
    :cond_4
    return-void

    .line 10065
    .end local v2    # "dboxText":Ljava/lang/String;
    .end local v10    # "lines":I
    .end local v13    # "setting":Ljava/lang/String;
    :cond_5
    :try_start_8
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$17;->val$sb:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$17;->val$logFile:Ljava/io/File;

    const/high16 v4, 0x40000

    const-string v5, "\n\n[[TRUNCATED]]"

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    .line 10068
    :catch_1
    move-exception v7

    .line 10069
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$17;->val$logFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 10098
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v8    # "input":Ljava/io/InputStreamReader;
    .restart local v10    # "lines":I
    .restart local v13    # "setting":Ljava/lang/String;
    :catchall_0
    move-exception v0

    :goto_7
    if-eqz v8, :cond_6

    :try_start_9
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :cond_6
    :goto_8
    throw v0

    .line 10109
    .end local v8    # "input":Ljava/io/InputStreamReader;
    .restart local v2    # "dboxText":Ljava/lang/String;
    :cond_7
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$17;->val$processName:Ljava/lang/String;

    .restart local v1    # "pn":Ljava/lang/String;
    goto :goto_6

    .line 10098
    .end local v1    # "pn":Ljava/lang/String;
    .end local v2    # "dboxText":Ljava/lang/String;
    .restart local v8    # "input":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v3

    goto :goto_8

    .end local v8    # "input":Ljava/io/InputStreamReader;
    :catch_3
    move-exception v0

    goto/16 :goto_5

    .restart local v6    # "buf":[C
    .restart local v9    # "input":Ljava/io/InputStreamReader;
    .restart local v11    # "logcat":Ljava/lang/Process;
    .restart local v12    # "num":I
    :cond_8
    if-eqz v9, :cond_3

    :try_start_a
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_5

    .end local v6    # "buf":[C
    .end local v12    # "num":I
    :catchall_1
    move-exception v0

    move-object v8, v9

    .end local v9    # "input":Ljava/io/InputStreamReader;
    .restart local v8    # "input":Ljava/io/InputStreamReader;
    goto :goto_7

    .line 10095
    .end local v11    # "logcat":Ljava/lang/Process;
    :catch_4
    move-exception v7

    goto/16 :goto_4

    .line 10089
    .restart local v11    # "logcat":Ljava/lang/Process;
    :catch_5
    move-exception v0

    goto/16 :goto_2

    .line 10088
    :catch_6
    move-exception v0

    goto/16 :goto_1
.end method
