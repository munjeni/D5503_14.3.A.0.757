.class Lcom/android/server/BackupManagerService;
.super Landroid/app/backup/IBackupManager$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BackupManagerService$3;,
        Lcom/android/server/BackupManagerService$ActiveRestoreSession;,
        Lcom/android/server/BackupManagerService$PerformInitializeTask;,
        Lcom/android/server/BackupManagerService$PerformClearTask;,
        Lcom/android/server/BackupManagerService$PerformRestoreTask;,
        Lcom/android/server/BackupManagerService$RestoreState;,
        Lcom/android/server/BackupManagerService$PerformFullRestoreTask;,
        Lcom/android/server/BackupManagerService$RestorePolicy;,
        Lcom/android/server/BackupManagerService$FileMetadata;,
        Lcom/android/server/BackupManagerService$PerformFullBackupTask;,
        Lcom/android/server/BackupManagerService$FullBackupObbConnection;,
        Lcom/android/server/BackupManagerService$ObbServiceClient;,
        Lcom/android/server/BackupManagerService$PerformBackupTask;,
        Lcom/android/server/BackupManagerService$BackupState;,
        Lcom/android/server/BackupManagerService$BackupRestoreTask;,
        Lcom/android/server/BackupManagerService$ClearDataObserver;,
        Lcom/android/server/BackupManagerService$TransportConnection;,
        Lcom/android/server/BackupManagerService$RunInitializeReceiver;,
        Lcom/android/server/BackupManagerService$RunBackupReceiver;,
        Lcom/android/server/BackupManagerService$BackupHandler;,
        Lcom/android/server/BackupManagerService$Operation;,
        Lcom/android/server/BackupManagerService$FullRestoreParams;,
        Lcom/android/server/BackupManagerService$FullBackupParams;,
        Lcom/android/server/BackupManagerService$FullParams;,
        Lcom/android/server/BackupManagerService$ClearRetryParams;,
        Lcom/android/server/BackupManagerService$ClearParams;,
        Lcom/android/server/BackupManagerService$RestoreParams;,
        Lcom/android/server/BackupManagerService$RestoreGetSetsParams;,
        Lcom/android/server/BackupManagerService$ProvisionedObserver;,
        Lcom/android/server/BackupManagerService$BackupRequest;
    }
.end annotation


# static fields
.field static final BACKUP_FILE_HEADER_MAGIC:Ljava/lang/String; = "ANDROID BACKUP\n"

.field static final BACKUP_FILE_VERSION:I = 0x1

.field private static final BACKUP_INTERVAL:J = 0x36ee80L

.field static final BACKUP_MANIFEST_FILENAME:Ljava/lang/String; = "_manifest"

.field static final BACKUP_MANIFEST_VERSION:I = 0x1

.field static final COMPRESS_FULL_BACKUPS:Z = true

.field static final CURRENT_ANCESTRAL_RECORD_VERSION:I = 0x1

.field private static final DEBUG:Z = true

.field static final DEBUG_BACKUP_TRACE:Z = true

.field static final ENCRYPTION_ALGORITHM_NAME:Ljava/lang/String; = "AES-256"

.field private static final FIRST_BACKUP_INTERVAL:J = 0x2932e00L

.field private static final FUZZ_MILLIS:I = 0x493e0

.field static final INIT_SENTINEL_FILE_NAME:Ljava/lang/String; = "_need_init_"

.field private static final MORE_DEBUG:Z = false

.field static final MSG_BACKUP_RESTORE_STEP:I = 0x14

.field private static final MSG_FULL_CONFIRMATION_TIMEOUT:I = 0x9

.field static final MSG_OP_COMPLETE:I = 0x15

.field private static final MSG_PACKAGE_INSTALLATION_CHANGE:I = 0xd

.field private static final MSG_RESTORE_TIMEOUT:I = 0x8

.field private static final MSG_RETRY_CLEAR:I = 0xc

.field private static final MSG_RETRY_INIT:I = 0xb

.field private static final MSG_RUN_BACKUP:I = 0x1

.field private static final MSG_RUN_CLEAR:I = 0x4

.field private static final MSG_RUN_FULL_BACKUP:I = 0x2

.field private static final MSG_RUN_FULL_RESTORE:I = 0xa

.field private static final MSG_RUN_GET_RESTORE_SETS:I = 0x6

.field private static final MSG_RUN_INITIALIZE:I = 0x5

.field private static final MSG_RUN_RESTORE:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x7

.field static final OP_ACKNOWLEDGED:I = 0x1

.field static final OP_PENDING:I = 0x0

.field static final OP_TIMEOUT:I = -0x1

.field static final PACKAGE_MANAGER_SENTINEL:Ljava/lang/String; = "@pm@"

.field static final PBKDF2_HASH_ROUNDS:I = 0x2710

.field static final PBKDF2_KEY_SIZE:I = 0x100

.field static final PBKDF2_SALT_SIZE:I = 0x200

.field private static final RUN_BACKUP_ACTION:Ljava/lang/String; = "android.app.backup.intent.RUN"

.field private static final RUN_CLEAR_ACTION:Ljava/lang/String; = "android.app.backup.intent.CLEAR"

.field private static final RUN_INITIALIZE_ACTION:Ljava/lang/String; = "android.app.backup.intent.INIT"

.field static final SERVICE_ACTION_TRANSPORT_HOST:Ljava/lang/String; = "android.backup.TRANSPORT_HOST"

.field static final SHARED_BACKUP_AGENT_PACKAGE:Ljava/lang/String; = "com.android.sharedstoragebackup"

.field private static final TAG:Ljava/lang/String; = "BackupManagerService"

.field static final TIMEOUT_BACKUP_INTERVAL:J = 0x7530L

.field static final TIMEOUT_FULL_BACKUP_INTERVAL:J = 0x493e0L

.field static final TIMEOUT_FULL_CONFIRMATION:J = 0xea60L

.field static final TIMEOUT_INTERVAL:J = 0x2710L

.field static final TIMEOUT_RESTORE_INTERVAL:J = 0xea60L

.field static final TIMEOUT_SHARED_BACKUP_INTERVAL:J = 0x1b7740L

.field private static final TRANSPORT_RETRY_INTERVAL:J = 0x36ee80L


# instance fields
.field mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

.field private mActivityManager:Landroid/app/IActivityManager;

.field final mAgentConnectLock:Ljava/lang/Object;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field mAncestralPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAncestralToken:J

.field mAutoRestore:Z

.field mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

.field mBackupManagerBinder:Landroid/app/backup/IBackupManager;

.field final mBackupParticipants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field volatile mBackupRunning:Z

.field final mBackupTrace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBaseStateDir:Ljava/io/File;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mClearDataLock:Ljava/lang/Object;

.field volatile mClearingData:Z

.field mConnectedAgent:Landroid/app/IBackupAgent;

.field volatile mConnecting:Z

.field private mContext:Landroid/content/Context;

.field final mCurrentOpLock:Ljava/lang/Object;

.field final mCurrentOperations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/BackupManagerService$Operation;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentToken:J

.field mCurrentTransport:Ljava/lang/String;

.field mDataDir:Ljava/io/File;

.field mEnabled:Z

.field private mEverStored:Ljava/io/File;

.field mEverStoredApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mFullConfirmations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/BackupManagerService$FullParams;",
            ">;"
        }
    .end annotation
.end field

.field mHandlerThread:Landroid/os/HandlerThread;

.field mJournal:Ljava/io/File;

.field mJournalDir:Ljava/io/File;

.field volatile mLastBackupPass:J

.field private mMountService:Landroid/os/storage/IMountService;

.field volatile mNextBackupPass:J

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageManagerBinder:Landroid/content/pm/IPackageManager;

.field private mPasswordHash:Ljava/lang/String;

.field private mPasswordHashFile:Ljava/io/File;

.field private mPasswordSalt:[B

.field mPendingBackups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/BackupManagerService$BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field mPendingInits:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field mProvisioned:Z

.field mProvisionedObserver:Landroid/database/ContentObserver;

.field final mQueueLock:Ljava/lang/Object;

.field private final mRng:Ljava/security/SecureRandom;

.field mRunBackupIntent:Landroid/app/PendingIntent;

.field mRunBackupReceiver:Landroid/content/BroadcastReceiver;

.field mRunInitIntent:Landroid/app/PendingIntent;

.field mRunInitReceiver:Landroid/content/BroadcastReceiver;

.field mTokenFile:Ljava/io/File;

.field final mTokenGenerator:Ljava/util/Random;

.field final mTransportConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/BackupManagerService$TransportConnection;",
            ">;"
        }
    .end annotation
.end field

.field final mTransportNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mTransports:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/backup/IBackupTransport;",
            ">;"
        }
    .end annotation
.end field

.field mWakelock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 834
    invoke-direct/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;-><init>()V

    .line 225
    new-instance v24, Landroid/util/SparseArray;

    invoke-direct/range {v24 .. v24}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 240
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    .line 247
    new-instance v24, Ljava/lang/Object;

    invoke-direct/range {v24 .. v24}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 253
    new-instance v24, Ljava/lang/Object;

    invoke-direct/range {v24 .. v24}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    .line 262
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mBackupTrace:Ljava/util/List;

    .line 265
    new-instance v24, Ljava/lang/Object;

    invoke-direct/range {v24 .. v24}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    .line 269
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mTransportNames:Ljava/util/HashMap;

    .line 271
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    .line 273
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mTransportConnections:Ljava/util/ArrayList;

    .line 439
    new-instance v24, Landroid/util/SparseArray;

    invoke-direct/range {v24 .. v24}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    .line 440
    new-instance v24, Ljava/lang/Object;

    invoke-direct/range {v24 .. v24}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    .line 441
    new-instance v24, Ljava/util/Random;

    invoke-direct/range {v24 .. v24}, Ljava/util/Random;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    .line 443
    new-instance v24, Landroid/util/SparseArray;

    invoke-direct/range {v24 .. v24}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    .line 457
    new-instance v24, Ljava/security/SecureRandom;

    invoke-direct/range {v24 .. v24}, Ljava/security/SecureRandom;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mRng:Ljava/security/SecureRandom;

    .line 472
    new-instance v24, Ljava/util/HashSet;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    .line 476
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 477
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    .line 478
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mCurrentToken:J

    .line 482
    new-instance v24, Ljava/util/HashSet;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    .line 1496
    new-instance v24, Lcom/android/server/BackupManagerService$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$1;-><init>(Lcom/android/server/BackupManagerService;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 835
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    .line 836
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 837
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    .line 838
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 840
    const-string v24, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/app/AlarmManager;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 841
    const-string v24, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/PowerManager;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 842
    const-string v24, "mount"

    invoke-static/range {v24 .. v24}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mMountService:Landroid/os/storage/IMountService;

    .line 844
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/server/BackupManagerService;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 847
    new-instance v24, Landroid/os/HandlerThread;

    const-string v25, "backup"

    const/16 v26, 0xa

    invoke-direct/range {v24 .. v26}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Thread;->start()V

    .line 849
    new-instance v24, Lcom/android/server/BackupManagerService$BackupHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/BackupManagerService$BackupHandler;-><init>(Lcom/android/server/BackupManagerService;Landroid/os/Looper;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    .line 852
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    .line 853
    .local v19, "resolver":Landroid/content/ContentResolver;
    const-string v24, "backup_enabled"

    const/16 v25, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    if-eqz v24, :cond_4

    const/4 v4, 0x1

    .line 855
    .local v4, "areEnabled":Z
    :goto_0
    const-string v24, "device_provisioned"

    const/16 v25, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    if-eqz v24, :cond_5

    const/16 v24, 0x1

    :goto_1
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    .line 857
    const-string v24, "backup_auto_restore"

    const/16 v25, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    if-eqz v24, :cond_6

    const/16 v24, 0x1

    :goto_2
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/BackupManagerService;->mAutoRestore:Z

    .line 860
    new-instance v24, Lcom/android/server/BackupManagerService$ProvisionedObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/BackupManagerService$ProvisionedObserver;-><init>(Lcom/android/server/BackupManagerService;Landroid/os/Handler;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mProvisionedObserver:Landroid/database/ContentObserver;

    .line 861
    const-string v24, "device_provisioned"

    invoke-static/range {v24 .. v24}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mProvisionedObserver:Landroid/database/ContentObserver;

    move-object/from16 v26, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 867
    new-instance v24, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSecureDataDirectory()Ljava/io/File;

    move-result-object v25

    const-string v26, "backup"

    invoke-direct/range {v24 .. v26}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->mkdirs()Z

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 870
    const-string v24, "BackupManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "SELinux restorecon failed on "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mDataDir:Ljava/io/File;

    .line 874
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v25, v0

    const-string v26, "pwhash"

    invoke-direct/range {v24 .. v26}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_2

    .line 876
    const/4 v9, 0x0

    .line 877
    .local v9, "fin":Ljava/io/FileInputStream;
    const/4 v13, 0x0

    .line 879
    .local v13, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 880
    .end local v9    # "fin":Ljava/io/FileInputStream;
    .local v10, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v14, Ljava/io/DataInputStream;

    new-instance v24, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v24

    invoke-direct {v0, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v24

    invoke-direct {v14, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 883
    .end local v13    # "in":Ljava/io/DataInputStream;
    .local v14, "in":Ljava/io/DataInputStream;
    :try_start_2
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v21

    .line 884
    .local v21, "saltLen":I
    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 885
    .local v20, "salt":[B
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 886
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    .line 887
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mPasswordSalt:[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 892
    if-eqz v14, :cond_1

    :try_start_3
    invoke-virtual {v14}, Ljava/io/FilterInputStream;->close()V

    .line 893
    :cond_1
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 901
    .end local v10    # "fin":Ljava/io/FileInputStream;
    .end local v14    # "in":Ljava/io/DataInputStream;
    .end local v20    # "salt":[B
    .end local v21    # "saltLen":I
    :cond_2
    :goto_3
    new-instance v24, Lcom/android/server/BackupManagerService$RunBackupReceiver;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/BackupManagerService$RunBackupReceiver;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/server/BackupManagerService$1;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    .line 902
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 903
    .local v8, "filter":Landroid/content/IntentFilter;
    const-string v24, "android.app.backup.intent.RUN"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v24, v0

    const-string v25, "android.permission.BACKUP"

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 907
    new-instance v24, Lcom/android/server/BackupManagerService$RunInitializeReceiver;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/BackupManagerService$RunInitializeReceiver;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/server/BackupManagerService$1;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    .line 908
    new-instance v8, Landroid/content/IntentFilter;

    .end local v8    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 909
    .restart local v8    # "filter":Landroid/content/IntentFilter;
    const-string v24, "android.app.backup.intent.INIT"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v24, v0

    const-string v25, "android.permission.BACKUP"

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 913
    new-instance v5, Landroid/content/Intent;

    const-string v24, "android.app.backup.intent.RUN"

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 914
    .local v5, "backupIntent":Landroid/content/Intent;
    const/high16 v24, 0x40000000

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 915
    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    .line 917
    new-instance v16, Landroid/content/Intent;

    const-string v24, "android.app.backup.intent.INIT"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 918
    .local v16, "initIntent":Landroid/content/Intent;
    const/high16 v24, 0x40000000

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 919
    const/16 v24, 0x5

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v16

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 922
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v25, v0

    const-string v26, "pending"

    invoke-direct/range {v24 .. v26}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mJournalDir:Ljava/io/File;

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mJournalDir:Ljava/io/File;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->mkdirs()Z

    .line 924
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    .line 927
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BackupManagerService;->initPackageTracking()V

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 933
    const/16 v24, 0x0

    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V

    .line 934
    monitor-exit v25
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 938
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "backup_transport"

    invoke-static/range {v24 .. v25}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 940
    const-string v24, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 941
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 943
    :cond_3
    const-string v24, "BackupManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Starting with transport "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    new-instance v23, Landroid/content/Intent;

    const-string v24, "android.backup.TRANSPORT_HOST"

    invoke-direct/range {v23 .. v24}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 947
    .local v23, "transportServiceIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v11

    .line 950
    .local v11, "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v25, "BackupManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Found transports: "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    if-nez v11, :cond_a

    const-string v24, "null"

    :goto_4
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    if-eqz v11, :cond_c

    .line 959
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_5
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v12, v0, :cond_c

    .line 961
    :try_start_5
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v24

    iget-object v15, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 962
    .local v15, "info":Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v24, v0

    iget-object v0, v15, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v18

    .line 963
    .local v18, "packInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v24, v0

    const/high16 v25, 0x40000000

    and-int v24, v24, v25

    if-eqz v24, :cond_b

    .line 964
    new-instance v22, Landroid/content/ComponentName;

    iget-object v0, v15, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    iget-object v0, v15, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    .local v22, "svcName":Landroid/content/ComponentName;
    const-string v24, "BackupManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Binding to transport host "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 969
    .local v17, "intent":Landroid/content/Intent;
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 970
    new-instance v6, Lcom/android/server/BackupManagerService$TransportConnection;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/BackupManagerService$TransportConnection;-><init>(Lcom/android/server/BackupManagerService;)V

    .line 971
    .local v6, "connection":Lcom/android/server/BackupManagerService$TransportConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mTransportConnections:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    const/16 v24, 0x1

    sget-object v25, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 959
    .end local v6    # "connection":Lcom/android/server/BackupManagerService$TransportConnection;
    .end local v15    # "info":Landroid/content/pm/ServiceInfo;
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v18    # "packInfo":Landroid/content/pm/PackageInfo;
    .end local v22    # "svcName":Landroid/content/ComponentName;
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_5

    .line 853
    .end local v4    # "areEnabled":Z
    .end local v5    # "backupIntent":Landroid/content/Intent;
    .end local v8    # "filter":Landroid/content/IntentFilter;
    .end local v11    # "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v12    # "i":I
    .end local v16    # "initIntent":Landroid/content/Intent;
    .end local v23    # "transportServiceIntent":Landroid/content/Intent;
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 855
    .restart local v4    # "areEnabled":Z
    :cond_5
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 857
    :cond_6
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 888
    .restart local v9    # "fin":Ljava/io/FileInputStream;
    .restart local v13    # "in":Ljava/io/DataInputStream;
    :catch_0
    move-exception v7

    .line 889
    .local v7, "e":Ljava/io/IOException;
    :goto_7
    :try_start_6
    const-string v24, "BackupManagerService"

    const-string v25, "Unable to read saved backup pw hash"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 892
    if-eqz v13, :cond_7

    :try_start_7
    invoke-virtual {v13}, Ljava/io/FilterInputStream;->close()V

    .line 893
    :cond_7
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_3

    .line 894
    :catch_1
    move-exception v7

    .line 895
    const-string v24, "BackupManagerService"

    const-string v25, "Unable to close streams"

    .end local v9    # "fin":Ljava/io/FileInputStream;
    .end local v13    # "in":Ljava/io/DataInputStream;
    :goto_8
    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 891
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v9    # "fin":Ljava/io/FileInputStream;
    .restart local v13    # "in":Ljava/io/DataInputStream;
    :catchall_0
    move-exception v24

    .line 892
    :goto_9
    if-eqz v13, :cond_8

    :try_start_8
    invoke-virtual {v13}, Ljava/io/FilterInputStream;->close()V

    .line 893
    :cond_8
    if-eqz v9, :cond_9

    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 891
    :cond_9
    :goto_a
    throw v24

    .line 934
    .end local v9    # "fin":Ljava/io/FileInputStream;
    .end local v13    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "backupIntent":Landroid/content/Intent;
    .restart local v8    # "filter":Landroid/content/IntentFilter;
    .restart local v16    # "initIntent":Landroid/content/Intent;
    :catchall_1
    move-exception v24

    :try_start_9
    monitor-exit v25
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v24

    .line 950
    .restart local v11    # "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v23    # "transportServiceIntent":Landroid/content/Intent;
    :cond_a
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    goto/16 :goto_4

    .line 976
    .restart local v12    # "i":I
    .restart local v15    # "info":Landroid/content/pm/ServiceInfo;
    .restart local v18    # "packInfo":Landroid/content/pm/PackageInfo;
    :cond_b
    :try_start_a
    const-string v24, "BackupManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Transport package not privileged: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v15, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_6

    .line 978
    .end local v15    # "info":Landroid/content/pm/ServiceInfo;
    .end local v18    # "packInfo":Landroid/content/pm/PackageInfo;
    :catch_2
    move-exception v7

    .line 979
    .local v7, "e":Ljava/lang/Exception;
    const-string v24, "BackupManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Problem resolving transport service: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 986
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v12    # "i":I
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BackupManagerService;->parseLeftoverJournals()V

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const-string v26, "*backup*"

    invoke-virtual/range {v24 .. v26}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 992
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/BackupManagerService;->setBackupEnabled(Z)V

    .line 993
    return-void

    .line 894
    .end local v5    # "backupIntent":Landroid/content/Intent;
    .end local v8    # "filter":Landroid/content/IntentFilter;
    .end local v11    # "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v16    # "initIntent":Landroid/content/Intent;
    .end local v23    # "transportServiceIntent":Landroid/content/Intent;
    .restart local v9    # "fin":Ljava/io/FileInputStream;
    .restart local v13    # "in":Ljava/io/DataInputStream;
    :catch_3
    move-exception v7

    .line 895
    .local v7, "e":Ljava/io/IOException;
    const-string v25, "BackupManagerService"

    const-string v26, "Unable to close streams"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 894
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "fin":Ljava/io/FileInputStream;
    .end local v13    # "in":Ljava/io/DataInputStream;
    .restart local v10    # "fin":Ljava/io/FileInputStream;
    .restart local v14    # "in":Ljava/io/DataInputStream;
    .restart local v20    # "salt":[B
    .restart local v21    # "saltLen":I
    :catch_4
    move-exception v7

    .line 895
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v24, "BackupManagerService"

    const-string v25, "Unable to close streams"

    goto/16 :goto_8

    .line 891
    .end local v7    # "e":Ljava/io/IOException;
    .end local v14    # "in":Ljava/io/DataInputStream;
    .end local v20    # "salt":[B
    .end local v21    # "saltLen":I
    .restart local v13    # "in":Ljava/io/DataInputStream;
    :catchall_2
    move-exception v24

    move-object v9, v10

    .end local v10    # "fin":Ljava/io/FileInputStream;
    .restart local v9    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_9

    .end local v9    # "fin":Ljava/io/FileInputStream;
    .end local v13    # "in":Ljava/io/DataInputStream;
    .restart local v10    # "fin":Ljava/io/FileInputStream;
    .restart local v14    # "in":Ljava/io/DataInputStream;
    :catchall_3
    move-exception v24

    move-object v13, v14

    .end local v14    # "in":Ljava/io/DataInputStream;
    .restart local v13    # "in":Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10    # "fin":Ljava/io/FileInputStream;
    .restart local v9    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_9

    .line 888
    .end local v9    # "fin":Ljava/io/FileInputStream;
    .restart local v10    # "fin":Ljava/io/FileInputStream;
    :catch_5
    move-exception v7

    move-object v9, v10

    .end local v10    # "fin":Ljava/io/FileInputStream;
    .restart local v9    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_7

    .end local v9    # "fin":Ljava/io/FileInputStream;
    .end local v13    # "in":Ljava/io/DataInputStream;
    .restart local v10    # "fin":Ljava/io/FileInputStream;
    .restart local v14    # "in":Ljava/io/DataInputStream;
    :catch_6
    move-exception v7

    move-object v13, v14

    .end local v14    # "in":Ljava/io/DataInputStream;
    .restart local v13    # "in":Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10    # "fin":Ljava/io/FileInputStream;
    .restart local v9    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_7
.end method

.method static synthetic access$000(Lcom/android/server/BackupManagerService;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/server/BackupManagerService;->startBackupAlarmsLocked(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;
    .param p1, "x1"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "x2"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/server/BackupManagerService;->routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/BackupManagerService;I)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->randomBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/BackupManagerService;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [B
    .param p3, "x3"    # I

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BackupManagerService;->buildPasswordKey(Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/BackupManagerService;)Ljava/security/SecureRandom;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mRng:Ljava/security/SecureRandom;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/BackupManagerService;[B)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;
    .param p1, "x1"    # [B

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/BackupManagerService;[B[BI)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;
    .param p1, "x1"    # [B
    .param p2, "x2"    # [B
    .param p3, "x3"    # I

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BackupManagerService;->makeKeyChecksum([B[BI)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/BackupManagerService;Ljava/lang/String;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/BackupManagerService;[Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;
    .param p1, "x1"    # [Landroid/content/pm/Signature;
    .param p2, "x2"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/server/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/BackupManagerService;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/HashSet;

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/BackupManagerService;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/android/internal/backup/IBackupTransport;

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BackupManagerService;->registerTransport(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/BackupManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/BackupManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1548
    .local p2, "targetPkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 1549
    .local v1, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz p1, :cond_1

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1550
    :cond_1
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1551
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 1552
    .local v2, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v2, :cond_2

    .line 1553
    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1554
    .restart local v2    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1556
    :cond_2
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1560
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scheduling backup for new app "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    goto :goto_0

    .line 1564
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v2    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "uid":I
    :cond_3
    return-void
.end method

.method private buildCharArrayKey([C[BI)Ljavax/crypto/SecretKey;
    .locals 5
    .param p1, "pwArray"    # [C
    .param p2, "salt"    # [B
    .param p3, "rounds"    # I

    .prologue
    .line 1180
    :try_start_0
    const-string v3, "PBKDF2WithHmacSHA1"

    invoke-static {v3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 1181
    .local v1, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    const/16 v3, 0x100

    invoke-direct {v2, p1, p2, p3, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 1182
    .local v2, "ks":Ljava/security/spec/KeySpec;
    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1188
    .end local v1    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    .end local v2    # "ks":Ljava/security/spec/KeySpec;
    :goto_0
    return-object v3

    .line 1183
    :catch_0
    move-exception v0

    .line 1184
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string v3, "BackupManagerService"

    const-string v4, "Invalid key spec for PBKDF2!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1185
    :catch_1
    move-exception v0

    .line 1186
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "BackupManagerService"

    const-string v4, "PBKDF2 unavailable!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private buildPasswordHash(Ljava/lang/String;[BI)Ljava/lang/String;
    .locals 2
    .param p1, "pw"    # Ljava/lang/String;
    .param p2, "salt"    # [B
    .param p3, "rounds"    # I

    .prologue
    .line 1192
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BackupManagerService;->buildPasswordKey(Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 1193
    .local v0, "key":Ljavax/crypto/SecretKey;
    if-eqz v0, :cond_0

    .line 1194
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v1

    .line 1196
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private buildPasswordKey(Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    .locals 1
    .param p1, "pw"    # Ljava/lang/String;
    .param p2, "salt"    # [B
    .param p3, "rounds"    # I

    .prologue
    .line 1175
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/BackupManagerService;->buildCharArrayKey([C[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method private byteArrayToHex([B)Ljava/lang/String;
    .locals 4
    .param p1, "data"    # [B

    .prologue
    .line 1200
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1201
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1202
    aget-byte v2, p1, v1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Byte;->toHexString(BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1204
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private dataChangedImpl(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 5077
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 5078
    .local v0, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 5079
    return-void
.end method

.method private dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5085
    .local p2, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v1, 0xb04

    invoke-static {v1, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 5087
    if-nez p2, :cond_0

    .line 5088
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataChanged but no participant pkg=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5117
    :goto_0
    return-void

    .line 5093
    :cond_0
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5095
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5098
    new-instance v0, Lcom/android/server/BackupManagerService$BackupRequest;

    invoke-direct {v0, p0, p1}, Lcom/android/server/BackupManagerService$BackupRequest;-><init>(Lcom/android/server/BackupManagerService;Ljava/lang/String;)V

    .line 5099
    .local v0, "req":Lcom/android/server/BackupManagerService$BackupRequest;
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5100
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Now staging backup of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5105
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->writeToJournalLocked(Ljava/lang/String;)V

    .line 5116
    .end local v0    # "req":Lcom/android/server/BackupManagerService$BackupRequest;
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5123
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 5125
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v5

    .line 5126
    :try_start_0
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    monitor-exit v5

    .line 5142
    :goto_0
    return-object v4

    .line 5127
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 5132
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 5133
    .local v3, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v5

    .line 5134
    :try_start_1
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 5135
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 5136
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 5137
    .local v2, "s":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 5138
    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 5135
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5141
    .end local v2    # "s":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    monitor-exit v5

    move-object v4, v3

    .line 5142
    goto :goto_0

    .line 5141
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4
.end method

.method private doFullBackupOrRestore(ILjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .locals 9
    .param p1, "token"    # I
    .param p2, "curPassword"    # Ljava/lang/String;
    .param p3, "encPassword"    # Ljava/lang/String;
    .param p4, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;

    .prologue
    const/4 v1, 0x1

    .line 5493
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doFullBackupOrRestore : token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5496
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v6

    .line 5497
    :try_start_0
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/BackupManagerService$FullParams;

    .line 5498
    .local v3, "params":Lcom/android/server/BackupManagerService$FullParams;
    if-eqz v3, :cond_4

    .line 5500
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 5502
    instance-of v5, v3, Lcom/android/server/BackupManagerService$FullBackupParams;

    if-eqz v5, :cond_1

    const/4 v4, 0x2

    .line 5506
    .local v4, "verb":I
    :goto_0
    iput-object p4, v3, Lcom/android/server/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 5507
    iput-object p2, v3, Lcom/android/server/BackupManagerService$FullParams;->curPassword:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5511
    :try_start_1
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v5}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v5

    if-eq v5, v1, :cond_2

    .line 5513
    .local v1, "isEncrypted":Z
    :goto_1
    if-eqz v1, :cond_0

    const-string v5, "BackupManagerService"

    const-string v7, "Device is encrypted; forcing enc password"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5519
    :cond_0
    :goto_2
    if-eqz v1, :cond_3

    .end local p2    # "curPassword":Ljava/lang/String;
    :goto_3
    :try_start_2
    iput-object p2, v3, Lcom/android/server/BackupManagerService$FullParams;->encryptPassword:Ljava/lang/String;

    .line 5521
    const-string v5, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sending conf message with verb "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5522
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5523
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v5, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 5524
    .local v2, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5529
    .end local v1    # "isEncrypted":Z
    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "verb":I
    :goto_4
    monitor-exit v6

    .line 5530
    return-void

    .line 5502
    .restart local p2    # "curPassword":Ljava/lang/String;
    :cond_1
    const/16 v4, 0xa

    goto :goto_0

    .line 5511
    .restart local v4    # "verb":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 5514
    :catch_0
    move-exception v0

    .line 5516
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "BackupManagerService"

    const-string v7, "Unable to contact mount service!"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5517
    const/4 v1, 0x1

    .restart local v1    # "isEncrypted":Z
    goto :goto_2

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    move-object p2, p3

    .line 5519
    goto :goto_3

    .line 5527
    .end local v1    # "isEncrypted":Z
    .end local v4    # "verb":I
    :cond_4
    const-string v5, "BackupManagerService"

    const-string v7, "Attempted to ack full backup/restore with invalid token"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 5529
    .end local v3    # "params":Lcom/android/server/BackupManagerService$FullParams;
    .end local p2    # "curPassword":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 26
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 6288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 6289
    :try_start_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Backup Manager is "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->mEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    const-string v22, "enabled"

    :goto_0
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " / "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    move/from16 v22, v0

    if-nez v22, :cond_2

    const-string v22, "not "

    :goto_1
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "provisioned / "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->size()I

    move-result v22

    if-nez v22, :cond_3

    const-string v22, "not "

    :goto_2
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "pending init"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6292
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Auto-restore is "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->mAutoRestore:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4

    const-string v22, "enabled"

    :goto_3
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6293
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->mBackupRunning:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    const-string v22, "Backup currently running"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6294
    :cond_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Last backup pass started: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService;->mLastBackupPass:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " (now = "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v24, 0x29

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6296
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  next scheduled: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService;->mNextBackupPass:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6298
    const-string v22, "Available transports:"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6299
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService;->listAllTransports()[Ljava/lang/String;

    move-result-object v5

    .local v5, "arr$":[Ljava/lang/String;
    array-length v13, v5

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    move v12, v11

    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v13    # "len$":I
    .local v12, "i$":I
    :goto_4
    if-ge v12, v13, :cond_7

    aget-object v19, v5, v12

    .line 6300
    .local v19, "t":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    const-string v22, "  * "

    :goto_5
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6302
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v20

    .line 6303
    .local v20, "transport":Lcom/android/internal/backup/IBackupTransport;
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6304
    .local v7, "dir":Ljava/io/File;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "       destination: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/backup/IBackupTransport;->currentDestinationString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6305
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "       intent: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/backup/IBackupTransport;->configurationIntent()Landroid/content/Intent;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6306
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .local v6, "arr$":[Ljava/io/File;
    array-length v14, v6

    .local v14, "len$":I
    const/4 v11, 0x0

    .end local v12    # "i$":I
    .restart local v11    # "i$":I
    :goto_6
    if-ge v11, v14, :cond_6

    aget-object v9, v6, v11

    .line 6307
    .local v9, "f":Ljava/io/File;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "       "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " - "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " state bytes"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6306
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 6289
    .end local v6    # "arr$":[Ljava/io/File;
    .end local v7    # "dir":Ljava/io/File;
    .end local v9    # "f":Ljava/io/File;
    .end local v11    # "i$":I
    .end local v14    # "len$":I
    .end local v19    # "t":Ljava/lang/String;
    .end local v20    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_1
    :try_start_2
    const-string v22, "disabled"

    goto/16 :goto_0

    :cond_2
    const-string v22, ""

    goto/16 :goto_1

    :cond_3
    const-string v22, ""

    goto/16 :goto_2

    .line 6292
    :cond_4
    const-string v22, "disabled"

    goto/16 :goto_3

    .line 6300
    .restart local v12    # "i$":I
    .restart local v19    # "t":Ljava/lang/String;
    :cond_5
    const-string v22, "    "

    goto/16 :goto_5

    .line 6309
    .end local v12    # "i$":I
    :catch_0
    move-exception v8

    .line 6310
    .local v8, "e":Ljava/lang/Exception;
    const-string v22, "BackupManagerService"

    const-string v24, "Error in transport"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6311
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "        Error: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6299
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_6
    add-int/lit8 v11, v12, 0x1

    .restart local v11    # "i$":I
    move v12, v11

    .end local v11    # "i$":I
    .restart local v12    # "i$":I
    goto/16 :goto_4

    .line 6315
    .end local v19    # "t":Ljava/lang/String;
    :cond_7
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Pending init: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashSet;->size()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v12    # "i$":I
    .local v11, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 6317
    .local v18, "s":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 6360
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v18    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v22

    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v22

    .line 6321
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupTrace:Ljava/util/List;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6322
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupTrace:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_9

    .line 6323
    const-string v22, "Most recent backup trace:"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupTrace:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 6325
    .restart local v18    # "s":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "   "

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 6328
    .end local v18    # "s":Ljava/lang/String;
    :catchall_1
    move-exception v22

    monitor-exit v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_9
    :try_start_6
    monitor-exit v24
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 6331
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 6332
    .local v3, "N":I
    const-string v22, "Participants:"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6333
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_9
    if-ge v10, v3, :cond_b

    .line 6334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v21

    .line 6335
    .local v21, "uid":I
    const-string v22, "  uid: "

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6336
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 6337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashSet;

    .line 6338
    .local v15, "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6339
    .local v4, "app":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    .line 6333
    .end local v4    # "app":Ljava/lang/String;
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 6343
    .end local v15    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v21    # "uid":I
    :cond_b
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Ancestral packages: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v22, v0

    if-nez v22, :cond_c

    const-string v22, "none"

    :goto_b
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v22, v0

    if-eqz v22, :cond_d

    .line 6346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 6347
    .local v16, "pkg":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c

    .line 6343
    .end local v16    # "pkg":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->size()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    goto :goto_b

    .line 6351
    :cond_d
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Ever backed up: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashSet;->size()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 6353
    .restart local v16    # "pkg":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d

    .line 6356
    .end local v16    # "pkg":Ljava/lang/String;
    :cond_e
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Pending backup: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->size()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/BackupManagerService$BackupRequest;

    .line 6358
    .local v17, "req":Lcom/android/server/BackupManagerService$BackupRequest;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 6360
    .end local v17    # "req":Lcom/android/server/BackupManagerService$BackupRequest;
    :cond_f
    monitor-exit v23
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 6361
    return-void
.end method

.method private getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    .locals 5
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    .line 1722
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    monitor-enter v2

    .line 1723
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/backup/IBackupTransport;

    .line 1724
    .local v0, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v0, :cond_0

    .line 1725
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested unavailable transport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    :cond_0
    monitor-exit v2

    return-object v0

    .line 1728
    .end local v0    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private hexToByteArray(Ljava/lang/String;)[B
    .locals 6
    .param p1, "digits"    # Ljava/lang/String;

    .prologue
    .line 1208
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 1209
    .local v0, "bytes":I
    mul-int/lit8 v3, v0, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 1210
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Hex string must have an even number of digits"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1213
    :cond_0
    new-array v2, v0, [B

    .line 1214
    .local v2, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1215
    div-int/lit8 v3, v1, 0x2

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1214
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 1217
    :cond_1
    return-object v2
.end method

.method private initPackageTracking()V
    .locals 22

    .prologue
    .line 1054
    const-string v19, "BackupManagerService"

    const-string v20, "Initializing package tracking"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v20, v0

    const-string v21, "ancestral"

    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mTokenFile:Ljava/io/File;

    .line 1059
    :try_start_0
    new-instance v17, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mTokenFile:Ljava/io/File;

    move-object/from16 v19, v0

    const-string v20, "r"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1060
    .local v17, "tf":Ljava/io/RandomAccessFile;
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v18

    .line 1061
    .local v18, "version":I
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 1062
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    .line 1063
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mCurrentToken:J

    .line 1065
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v10

    .line 1066
    .local v10, "numPackages":I
    if-ltz v10, :cond_0

    .line 1067
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 1068
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v10, :cond_0

    .line 1069
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    move-result-object v12

    .line 1070
    .local v12, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1068
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1074
    .end local v6    # "i":I
    .end local v10    # "numPackages":I
    .end local v12    # "pkgName":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1085
    .end local v17    # "tf":Ljava/io/RandomAccessFile;
    .end local v18    # "version":I
    :goto_1
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v20, v0

    const-string v21, "processed"

    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    .line 1086
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v19, v0

    const-string v20, "processed.new"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1091
    .local v16, "tempProcessedFile":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1092
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 1097
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1098
    const/4 v14, 0x0

    .line 1099
    .local v14, "temp":Ljava/io/RandomAccessFile;
    const/4 v7, 0x0

    .line 1102
    .local v7, "in":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v15, Ljava/io/RandomAccessFile;

    const-string v19, "rws"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v15, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1103
    .end local v14    # "temp":Ljava/io/RandomAccessFile;
    .local v15, "temp":Ljava/io/RandomAccessFile;
    :try_start_2
    new-instance v8, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v19, v0

    const-string v20, "r"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v8, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1107
    .end local v7    # "in":Ljava/io/RandomAccessFile;
    .local v8, "in":Ljava/io/RandomAccessFile;
    :goto_2
    :try_start_3
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v11

    .line 1109
    .local v11, "pkg":Ljava/lang/String;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 1110
    .local v9, "info":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1111
    invoke-virtual {v15, v11}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 1113
    .end local v9    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v19

    goto :goto_2

    .line 1075
    .end local v8    # "in":Ljava/io/RandomAccessFile;
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v15    # "temp":Ljava/io/RandomAccessFile;
    .end local v16    # "tempProcessedFile":Ljava/io/File;
    :catch_1
    move-exception v5

    .line 1077
    .local v5, "fnf":Ljava/io/FileNotFoundException;
    const-string v19, "BackupManagerService"

    const-string v20, "No ancestral data"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1078
    .end local v5    # "fnf":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v3

    .line 1079
    .local v3, "e":Ljava/io/IOException;
    const-string v19, "BackupManagerService"

    const-string v20, "Unable to read token file"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1118
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v7    # "in":Ljava/io/RandomAccessFile;
    .restart local v14    # "temp":Ljava/io/RandomAccessFile;
    .restart local v16    # "tempProcessedFile":Ljava/io/File;
    :catch_3
    move-exception v3

    .line 1121
    .local v3, "e":Ljava/io/EOFException;
    :goto_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 1122
    const-string v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error renaming "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1127
    :cond_2
    if-eqz v14, :cond_3

    :try_start_6
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 1128
    :cond_3
    :goto_4
    if-eqz v7, :cond_4

    :try_start_7
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1134
    .end local v3    # "e":Ljava/io/EOFException;
    .end local v7    # "in":Ljava/io/RandomAccessFile;
    .end local v14    # "temp":Ljava/io/RandomAccessFile;
    :cond_4
    :goto_5
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1135
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v19, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1136
    const-string v19, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1137
    const-string v19, "package"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1140
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 1141
    .local v13, "sdFilter":Landroid/content/IntentFilter;
    const-string v19, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1142
    const-string v19, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1144
    return-void

    .line 1124
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v13    # "sdFilter":Landroid/content/IntentFilter;
    .restart local v7    # "in":Ljava/io/RandomAccessFile;
    .restart local v14    # "temp":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v3

    .line 1125
    .local v3, "e":Ljava/io/IOException;
    :goto_6
    :try_start_8
    const-string v19, "BackupManagerService"

    const-string v20, "Error in processed file"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1127
    if-eqz v14, :cond_5

    :try_start_9
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .line 1128
    :cond_5
    :goto_7
    if-eqz v7, :cond_4

    :try_start_a
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_5

    .end local v3    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v19

    goto :goto_5

    .line 1127
    :catchall_0
    move-exception v19

    :goto_8
    if-eqz v14, :cond_6

    :try_start_b
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 1128
    :cond_6
    :goto_9
    if-eqz v7, :cond_7

    :try_start_c
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 1127
    :cond_7
    :goto_a
    throw v19

    :catch_6
    move-exception v20

    goto :goto_9

    .line 1128
    :catch_7
    move-exception v20

    goto :goto_a

    .line 1127
    .local v3, "e":Ljava/io/EOFException;
    :catch_8
    move-exception v19

    goto/16 :goto_4

    .local v3, "e":Ljava/io/IOException;
    :catch_9
    move-exception v19

    goto :goto_7

    .end local v3    # "e":Ljava/io/IOException;
    .end local v14    # "temp":Ljava/io/RandomAccessFile;
    .restart local v15    # "temp":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v19

    move-object v14, v15

    .end local v15    # "temp":Ljava/io/RandomAccessFile;
    .restart local v14    # "temp":Ljava/io/RandomAccessFile;
    goto :goto_8

    .end local v7    # "in":Ljava/io/RandomAccessFile;
    .end local v14    # "temp":Ljava/io/RandomAccessFile;
    .restart local v8    # "in":Ljava/io/RandomAccessFile;
    .restart local v15    # "temp":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v19

    move-object v7, v8

    .end local v8    # "in":Ljava/io/RandomAccessFile;
    .restart local v7    # "in":Ljava/io/RandomAccessFile;
    move-object v14, v15

    .end local v15    # "temp":Ljava/io/RandomAccessFile;
    .restart local v14    # "temp":Ljava/io/RandomAccessFile;
    goto :goto_8

    .line 1124
    .end local v14    # "temp":Ljava/io/RandomAccessFile;
    .restart local v15    # "temp":Ljava/io/RandomAccessFile;
    :catch_a
    move-exception v3

    move-object v14, v15

    .end local v15    # "temp":Ljava/io/RandomAccessFile;
    .restart local v14    # "temp":Ljava/io/RandomAccessFile;
    goto :goto_6

    .end local v7    # "in":Ljava/io/RandomAccessFile;
    .end local v14    # "temp":Ljava/io/RandomAccessFile;
    .restart local v8    # "in":Ljava/io/RandomAccessFile;
    .restart local v15    # "temp":Ljava/io/RandomAccessFile;
    :catch_b
    move-exception v3

    move-object v7, v8

    .end local v8    # "in":Ljava/io/RandomAccessFile;
    .restart local v7    # "in":Ljava/io/RandomAccessFile;
    move-object v14, v15

    .end local v15    # "temp":Ljava/io/RandomAccessFile;
    .restart local v14    # "temp":Ljava/io/RandomAccessFile;
    goto :goto_6

    .line 1118
    .end local v14    # "temp":Ljava/io/RandomAccessFile;
    .restart local v15    # "temp":Ljava/io/RandomAccessFile;
    :catch_c
    move-exception v3

    move-object v14, v15

    .end local v15    # "temp":Ljava/io/RandomAccessFile;
    .restart local v14    # "temp":Ljava/io/RandomAccessFile;
    goto/16 :goto_3

    .end local v7    # "in":Ljava/io/RandomAccessFile;
    .end local v14    # "temp":Ljava/io/RandomAccessFile;
    .restart local v8    # "in":Ljava/io/RandomAccessFile;
    .restart local v15    # "temp":Ljava/io/RandomAccessFile;
    :catch_d
    move-exception v3

    move-object v7, v8

    .end local v8    # "in":Ljava/io/RandomAccessFile;
    .restart local v7    # "in":Ljava/io/RandomAccessFile;
    move-object v14, v15

    .end local v15    # "temp":Ljava/io/RandomAccessFile;
    .restart local v14    # "temp":Ljava/io/RandomAccessFile;
    goto/16 :goto_3
.end method

.method private makeKeyChecksum([B[BI)[B
    .locals 4
    .param p1, "pwBytes"    # [B
    .param p2, "salt"    # [B
    .param p3, "rounds"    # I

    .prologue
    .line 1221
    array-length v3, p1

    new-array v2, v3, [C

    .line 1222
    .local v2, "mkAsChar":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 1223
    aget-byte v3, p1, v1

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 1222
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1226
    :cond_0
    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/BackupManagerService;->buildCharArrayKey([C[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 1227
    .local v0, "checksum":Ljava/security/Key;
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    return-object v3
.end method

.method private parseLeftoverJournals()V
    .locals 11

    .prologue
    .line 1147
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_4

    aget-object v2, v0, v3

    .line 1148
    .local v2, "f":Ljava/io/File;
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    invoke-virtual {v2, v8}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v8

    if-eqz v8, :cond_2

    .line 1152
    :cond_0
    const/4 v4, 0x0

    .line 1154
    .local v4, "in":Ljava/io/RandomAccessFile;
    :try_start_0
    const-string v8, "BackupManagerService"

    const-string v9, "Found stale backup journal, scheduling"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v8, "r"

    invoke-direct {v5, v2, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1157
    .end local v4    # "in":Ljava/io/RandomAccessFile;
    .local v5, "in":Ljava/io/RandomAccessFile;
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 1158
    .local v7, "packageName":Ljava/lang/String;
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    invoke-direct {p0, v7}, Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 1161
    .end local v7    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v4, v5

    .line 1167
    .end local v5    # "in":Ljava/io/RandomAccessFile;
    .restart local v4    # "in":Ljava/io/RandomAccessFile;
    :goto_2
    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1168
    :cond_1
    :goto_3
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1147
    .end local v4    # "in":Ljava/io/RandomAccessFile;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1163
    .restart local v4    # "in":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v1

    .line 1164
    .local v1, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_3
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t read "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1167
    if-eqz v4, :cond_1

    :try_start_4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v8

    goto :goto_3

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v4, :cond_3

    :try_start_5
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1168
    :cond_3
    :goto_6
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1167
    throw v8

    .line 1172
    .end local v2    # "f":Ljava/io/File;
    .end local v4    # "in":Ljava/io/RandomAccessFile;
    :cond_4
    return-void

    .line 1167
    .restart local v2    # "f":Ljava/io/File;
    .restart local v4    # "in":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v8

    goto :goto_3

    :catch_4
    move-exception v9

    goto :goto_6

    .end local v4    # "in":Ljava/io/RandomAccessFile;
    .restart local v5    # "in":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "in":Ljava/io/RandomAccessFile;
    .restart local v4    # "in":Ljava/io/RandomAccessFile;
    goto :goto_5

    .line 1163
    .end local v4    # "in":Ljava/io/RandomAccessFile;
    .restart local v5    # "in":Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v1

    move-object v4, v5

    .end local v5    # "in":Ljava/io/RandomAccessFile;
    .restart local v4    # "in":Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 1161
    :catch_6
    move-exception v8

    goto :goto_2
.end method

.method private randomBytes(I)[B
    .locals 2
    .param p1, "bits"    # I

    .prologue
    .line 1232
    div-int/lit8 v1, p1, 0x8

    new-array v0, v1, [B

    .line 1233
    .local v0, "array":[B
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mRng:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1234
    return-object v0
.end method

.method private registerTransport(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "component"    # Ljava/lang/String;
    .param p3, "transport"    # Lcom/android/internal/backup/IBackupTransport;

    .prologue
    .line 1454
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    monitor-enter v7

    .line 1455
    :try_start_0
    const-string v6, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Registering transport "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "::"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    if-eqz p3, :cond_1

    .line 1458
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v6, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1459
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mTransportNames:Ljava/util/HashMap;

    invoke-virtual {v6, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1472
    :try_start_1
    invoke-interface {p3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v5

    .line 1473
    .local v5, "transportName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v4, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1474
    .local v4, "stateDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 1476
    new-instance v3, Ljava/io/File;

    const-string v6, "_need_init_"

    invoke-direct {v3, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1477
    .local v3, "initSentinel":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1478
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1479
    :try_start_2
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1482
    const-wide/32 v0, 0xea60

    .line 1483
    .local v0, "delay":J
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    add-long/2addr v9, v0

    iget-object v11, p0, Lcom/android/server/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1485
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1493
    .end local v0    # "delay":J
    .end local v3    # "initSentinel":Ljava/io/File;
    .end local v4    # "stateDir":Ljava/io/File;
    .end local v5    # "transportName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1461
    :cond_1
    :try_start_3
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mTransportNames:Ljava/util/HashMap;

    invoke-virtual {v8, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1462
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mTransportNames:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    monitor-exit v7

    goto :goto_0

    .line 1466
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 1485
    .restart local v3    # "initSentinel":Ljava/io/File;
    .restart local v4    # "stateDir":Ljava/io/File;
    .restart local v5    # "transportName":Ljava/lang/String;
    :catchall_1
    move-exception v6

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v6
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1487
    .end local v3    # "initSentinel":Ljava/io/File;
    .end local v4    # "stateDir":Ljava/io/File;
    .end local v5    # "transportName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1489
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to register transport as "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mTransportNames:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1491
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private removePackageFromSetLocked(Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 1
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1590
    .local p1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1598
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1599
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1601
    :cond_0
    return-void
.end method

.method private routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "inPipe"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 2549
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 2550
    .local v4, "raw":Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2552
    .local v2, "in":Ljava/io/DataInputStream;
    const v6, 0x8000

    new-array v0, v6, [B

    .line 2554
    .local v0, "buffer":[B
    :cond_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .local v1, "chunkTotal":I
    if-lez v1, :cond_2

    .line 2555
    :goto_0
    if-lez v1, :cond_0

    .line 2556
    array-length v6, v0

    if-le v1, v6, :cond_1

    array-length v5, v0

    .line 2557
    .local v5, "toRead":I
    :goto_1
    invoke-virtual {v2, v0, v7, v5}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3

    .line 2558
    .local v3, "nRead":I
    invoke-virtual {p2, v0, v7, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 2559
    sub-int/2addr v1, v3

    .line 2560
    goto :goto_0

    .end local v3    # "nRead":I
    .end local v5    # "toRead":I
    :cond_1
    move v5, v1

    .line 2556
    goto :goto_1

    .line 2562
    :cond_2
    return-void
.end method

.method private signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z
    .locals 10
    .param p1, "storedSigs"    # [Landroid/content/pm/Signature;
    .param p2, "target"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 4353
    iget-object v8, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    .line 4354
    const-string v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "System app "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - skipping sig check"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4389
    :cond_0
    :goto_0
    return v6

    .line 4360
    :cond_1
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 4363
    .local v0, "deviceSigs":[Landroid/content/pm/Signature;
    if-eqz p1, :cond_2

    array-length v8, p1

    if-nez v8, :cond_3

    :cond_2
    if-eqz v0, :cond_0

    array-length v8, v0

    if-eqz v8, :cond_0

    .line 4367
    :cond_3
    if-eqz p1, :cond_4

    if-nez v0, :cond_5

    :cond_4
    move v6, v7

    .line 4368
    goto :goto_0

    .line 4374
    :cond_5
    array-length v5, p1

    .line 4375
    .local v5, "nStored":I
    array-length v4, v0

    .line 4377
    .local v4, "nDevice":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_0

    .line 4378
    const/4 v3, 0x0

    .line 4379
    .local v3, "match":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v4, :cond_6

    .line 4380
    aget-object v8, p1, v1

    aget-object v9, v0, v2

    invoke-virtual {v8, v9}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 4381
    const/4 v3, 0x1

    .line 4385
    :cond_6
    if-nez v3, :cond_8

    move v6, v7

    .line 4386
    goto :goto_0

    .line 4379
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4377
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private startBackupAlarmsLocked(J)V
    .locals 10
    .param p1, "delayBeforeFirstBackup"    # J

    .prologue
    const v6, 0x493e0

    .line 5709
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    .line 5710
    .local v7, "random":Ljava/util/Random;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-virtual {v7, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-long v4, v4

    add-long v2, v0, v4

    .line 5712
    .local v2, "when":J
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    .line 5713
    const-wide v2, 0x7fffffffffffffffL

    .line 5714
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alarm time overflow when setting mRunBackupIntent with delay: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", skip alarm"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5720
    :goto_0
    iput-wide v2, p0, Lcom/android/server/BackupManagerService;->mNextBackupPass:J

    .line 5721
    return-void

    .line 5717
    :cond_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    const-wide/32 v4, 0x36ee80

    invoke-virtual {v7, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-long v8, v6

    add-long/2addr v4, v8

    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private writeToJournalLocked(Ljava/lang/String;)V
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 5146
    const/4 v1, 0x0

    .line 5148
    .local v1, "out":Ljava/io/RandomAccessFile;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    if-nez v3, :cond_0

    const-string v3, "journal"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    .line 5149
    :cond_0
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    const-string v4, "rws"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5150
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .local v2, "out":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 5151
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5156
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_0
    move-object v1, v2

    .line 5158
    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    :cond_2
    :goto_1
    return-void

    .line 5152
    :catch_0
    move-exception v0

    .line 5153
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to backup journal"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5154
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5156
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    :goto_4
    throw v3

    :catch_2
    move-exception v4

    goto :goto_4

    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v3

    goto :goto_0

    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 5152
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method


# virtual methods
.method public acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .locals 12
    .param p1, "token"    # I
    .param p2, "allow"    # Z
    .param p3, "curPassword"    # Ljava/lang/String;
    .param p4, "encPpassword"    # Ljava/lang/String;
    .param p5, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;

    .prologue
    .line 5576
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "acknowledgeFullBackupOrRestore : token="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " allow="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5581
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.BACKUP"

    const-string v10, "acknowledgeFullBackupOrRestore"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5583
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 5587
    .local v4, "oldId":J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5588
    :try_start_1
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/BackupManagerService$FullParams;

    .line 5589
    .local v6, "params":Lcom/android/server/BackupManagerService$FullParams;
    if-eqz v6, :cond_5

    .line 5590
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v10, 0x9

    invoke-virtual {v8, v10, v6}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 5591
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 5593
    if-eqz p2, :cond_4

    .line 5594
    instance-of v8, v6, Lcom/android/server/BackupManagerService$FullBackupParams;

    if-eqz v8, :cond_1

    const/4 v7, 0x2

    .line 5598
    .local v7, "verb":I
    :goto_0
    move-object/from16 v0, p5

    iput-object v0, v6, Lcom/android/server/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 5599
    iput-object p3, v6, Lcom/android/server/BackupManagerService$FullParams;->curPassword:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5603
    :try_start_2
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v8}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v8

    const/4 v10, 0x1

    if-eq v8, v10, :cond_2

    const/4 v2, 0x1

    .line 5604
    .local v2, "isEncrypted":Z
    :goto_1
    if-eqz v2, :cond_0

    const-string v8, "BackupManagerService"

    const-string v10, "Device is encrypted; forcing enc password"

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5610
    :cond_0
    :goto_2
    if-eqz v2, :cond_3

    .end local p3    # "curPassword":Ljava/lang/String;
    :goto_3
    :try_start_3
    iput-object p3, v6, Lcom/android/server/BackupManagerService$FullParams;->encryptPassword:Ljava/lang/String;

    .line 5612
    const-string v8, "BackupManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sending conf message with verb "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5613
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5614
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v8, v7, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 5615
    .local v3, "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v8, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5624
    .end local v2    # "isEncrypted":Z
    .end local v3    # "msg":Landroid/os/Message;
    .end local v7    # "verb":I
    :goto_4
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5626
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5628
    return-void

    .line 5594
    .restart local p3    # "curPassword":Ljava/lang/String;
    :cond_1
    const/16 v7, 0xa

    goto :goto_0

    .line 5603
    .restart local v7    # "verb":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 5605
    :catch_0
    move-exception v1

    .line 5607
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v8, "BackupManagerService"

    const-string v10, "Unable to contact mount service!"

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5608
    const/4 v2, 0x1

    .restart local v2    # "isEncrypted":Z
    goto :goto_2

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    move-object/from16 p3, p4

    .line 5610
    goto :goto_3

    .line 5617
    .end local v2    # "isEncrypted":Z
    .end local v7    # "verb":I
    :cond_4
    const-string v8, "BackupManagerService"

    const-string v10, "User rejected full backup/restore operation"

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5619
    invoke-virtual {p0, v6}, Lcom/android/server/BackupManagerService;->signalFullBackupRestoreCompletion(Lcom/android/server/BackupManagerService$FullParams;)V

    goto :goto_4

    .line 5624
    .end local v6    # "params":Lcom/android/server/BackupManagerService$FullParams;
    .end local p3    # "curPassword":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 5626
    :catchall_1
    move-exception v8

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 5622
    .restart local v6    # "params":Lcom/android/server/BackupManagerService$FullParams;
    .restart local p3    # "curPassword":Ljava/lang/String;
    :cond_5
    :try_start_6
    const-string v8, "BackupManagerService"

    const-string v10, "Attempted to ack full backup/restore with invalid token"

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4
.end method

.method addBackupTrace(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 818
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mBackupTrace:Ljava/util/List;

    monitor-enter v1

    .line 819
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mBackupTrace:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    monitor-exit v1

    .line 822
    return-void

    .line 820
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method addPackageParticipantsLocked([Ljava/lang/String;)V
    .locals 8
    .param p1, "packageNames"    # [Ljava/lang/String;

    .prologue
    .line 1530
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v4

    .line 1531
    .local v4, "targetApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz p1, :cond_0

    .line 1532
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addPackageParticipantsLocked: #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1534
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct {p0, v3, v4}, Lcom/android/server/BackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 1533
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1537
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    const-string v5, "BackupManagerService"

    const-string v6, "addPackageParticipantsLocked: all"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    const/4 v5, 0x0

    invoke-direct {p0, v5, v4}, Lcom/android/server/BackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 1540
    :cond_1
    return-void
.end method

.method public agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agentBinder"    # Landroid/os/IBinder;

    .prologue
    .line 5830
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5831
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_0

    .line 5832
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "agentConnected pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " agent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5833
    invoke-static {p2}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v0

    .line 5834
    .local v0, "agent":Landroid/app/IBackupAgent;
    iput-object v0, p0, Lcom/android/server/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 5835
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BackupManagerService;->mConnecting:Z

    .line 5840
    .end local v0    # "agent":Landroid/app/IBackupAgent;
    :goto_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 5841
    monitor-exit v2

    .line 5842
    return-void

    .line 5837
    :cond_0
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-system process uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " claiming agent connected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5841
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public agentDisconnected(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 5849
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5850
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_0

    .line 5851
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 5852
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BackupManagerService;->mConnecting:Z

    .line 5857
    :goto_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 5858
    monitor-exit v1

    .line 5859
    return-void

    .line 5854
    :cond_0
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-system process uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " claiming agent disconnected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5858
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method allAgentPackages()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1606
    const/16 v4, 0x40

    .line 1607
    .local v4, "flags":I
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .line 1608
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 1609
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "a":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1610
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 1612
    .local v6, "pkg":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v2, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1613
    .local v2, "app":Landroid/content/pm/ApplicationInfo;
    iget v7, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const v8, 0x8000

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 1615
    :cond_0
    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1609
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1619
    .restart local v2    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_1
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v9, 0x400

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1621
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iput-object v8, v7, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1623
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v3

    .line 1624
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1627
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_2
    return-object v5
.end method

.method public backupNow()V
    .locals 5

    .prologue
    .line 5247
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "backupNow"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5249
    const-string v1, "BackupManagerService"

    const-string v2, "Scheduling immediate backup pass"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5250
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5254
    const-wide/32 v3, 0x36ee80

    :try_start_0
    invoke-direct {p0, v3, v4}, Lcom/android/server/BackupManagerService;->startBackupAlarmsLocked(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5256
    :try_start_1
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5261
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 5262
    return-void

    .line 5257
    :catch_0
    move-exception v0

    .line 5259
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "BackupManagerService"

    const-string v3, "run-backup intent cancelled!"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5261
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "transport"    # Ljava/lang/String;

    .prologue
    .line 5918
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beginRestoreSession: pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " transport="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5921
    const/4 v1, 0x1

    .line 5922
    .local v1, "needPermission":Z
    if-nez p2, :cond_0

    .line 5923
    iget-object p2, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 5925
    if-eqz p1, :cond_0

    .line 5926
    const/4 v0, 0x0

    .line 5928
    .local v0, "app":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 5934
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 5938
    const/4 v1, 0x0

    .line 5943
    .end local v0    # "app":Landroid/content/pm/PackageInfo;
    :cond_0
    if-eqz v1, :cond_1

    .line 5944
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BACKUP"

    const-string v5, "beginRestoreSession"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5950
    :goto_0
    monitor-enter p0

    .line 5951
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    if-eqz v3, :cond_2

    .line 5952
    const-string v3, "BackupManagerService"

    const-string v4, "Restore session requested but one already active"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5953
    const/4 v3, 0x0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5958
    :goto_1
    return-object v3

    .line 5929
    .restart local v0    # "app":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 5930
    .local v2, "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asked to restore nonexistent pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5931
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5947
    .end local v0    # "app":Landroid/content/pm/PackageInfo;
    .end local v2    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const-string v3, "BackupManagerService"

    const-string v4, "restoring self on current transport; no permission needed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5955
    :cond_2
    :try_start_2
    new-instance v3, Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/BackupManagerService$ActiveRestoreSession;-><init>(Lcom/android/server/BackupManagerService;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    .line 5956
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v4, 0x8

    const-wide/32 v5, 0xea60

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5957
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5958
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    goto :goto_1

    .line 5957
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;
    .locals 11
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "mode"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 1733
    const/4 v0, 0x0

    .line 1734
    .local v0, "agent":Landroid/app/IBackupAgent;
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1735
    const/4 v6, 0x1

    :try_start_0
    iput-boolean v6, p0, Lcom/android/server/BackupManagerService;->mConnecting:Z

    .line 1736
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1738
    :try_start_1
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v6, p1, p2}, Landroid/app/IActivityManager;->bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1739
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "awaiting agent for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x2710

    add-long v2, v6, v8

    .line 1745
    .local v2, "timeoutMark":J
    :goto_0
    iget-boolean v6, p0, Lcom/android/server/BackupManagerService;->mConnecting:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    if-nez v6, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    cmp-long v6, v6, v2

    if-gez v6, :cond_0

    .line 1747
    :try_start_2
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    const-wide/16 v7, 0x1388

    invoke-virtual {v6, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1748
    :catch_0
    move-exception v1

    .line 1750
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Interrupted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v6}, Landroid/app/IActivityManager;->clearPendingBackup()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1752
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1769
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "timeoutMark":J
    :goto_1
    return-object v4

    .line 1757
    .restart local v2    # "timeoutMark":J
    :cond_0
    :try_start_5
    iget-boolean v6, p0, Lcom/android/server/BackupManagerService;->mConnecting:Z

    if-ne v6, v10, :cond_1

    .line 1758
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Timeout waiting for agent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v6}, Landroid/app/IActivityManager;->clearPendingBackup()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1760
    :try_start_6
    monitor-exit v5

    goto :goto_1

    .line 1768
    .end local v2    # "timeoutMark":J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v4

    .line 1762
    .restart local v2    # "timeoutMark":J
    :cond_1
    :try_start_7
    const-string v4, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "got agent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1768
    .end local v2    # "timeoutMark":J
    :cond_2
    :goto_2
    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v4, v0

    .line 1769
    goto :goto_1

    .line 1765
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method clearApplicationDataSynchronous(Ljava/lang/String;)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1776
    :try_start_0
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1777
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v5, v5, 0x40

    if-nez v5, :cond_0

    .line 1808
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 1782
    :catch_0
    move-exception v0

    .line 1783
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tried to clear data for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1787
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    new-instance v2, Lcom/android/server/BackupManagerService$ClearDataObserver;

    invoke-direct {v2, p0}, Lcom/android/server/BackupManagerService$ClearDataObserver;-><init>(Lcom/android/server/BackupManagerService;)V

    .line 1789
    .local v2, "observer":Lcom/android/server/BackupManagerService$ClearDataObserver;
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1790
    const/4 v5, 0x1

    :try_start_1
    iput-boolean v5, p0, Lcom/android/server/BackupManagerService;->mClearingData:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1792
    :try_start_2
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v7, 0x0

    invoke-interface {v5, p1, v2, v7}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1798
    :goto_1
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x2710

    add-long v3, v7, v9

    .line 1799
    .local v3, "timeoutMark":J
    :goto_2
    iget-boolean v5, p0, Lcom/android/server/BackupManagerService;->mClearingData:Z

    if-eqz v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v7

    cmp-long v5, v7, v3

    if-gez v5, :cond_1

    .line 1801
    :try_start_4
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    const-wide/16 v7, 0x1388

    invoke-virtual {v5, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 1802
    :catch_1
    move-exception v0

    .line 1804
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v5, 0x0

    :try_start_5
    iput-boolean v5, p0, Lcom/android/server/BackupManagerService;->mClearingData:Z

    goto :goto_2

    .line 1807
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "timeoutMark":J
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v5

    .restart local v3    # "timeoutMark":J
    :cond_1
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 1793
    .end local v3    # "timeoutMark":J
    :catch_2
    move-exception v5

    goto :goto_1
.end method

.method public clearBackupData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "transportName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 5191
    const-string v11, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "clearBackupData() of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " on "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5194
    :try_start_0
    iget-object v11, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v12, 0x40

    move-object/from16 v0, p2

    invoke-virtual {v11, v0, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 5203
    .local v5, "info":Landroid/content/pm/PackageInfo;
    iget-object v11, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v12, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_2

    .line 5205
    iget-object v11, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 5221
    .local v2, "apps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 5223
    const-string v11, "BackupManagerService"

    const-string v12, "Found the app - running clear process"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5224
    iget-object v11, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v12, 0xc

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 5225
    iget-object v12, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v12

    .line 5226
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v10

    .line 5227
    .local v10, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v10, :cond_4

    .line 5229
    iget-object v11, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v13, 0xc

    new-instance v14, Lcom/android/server/BackupManagerService$ClearRetryParams;

    invoke-direct/range {v14 .. v17}, Lcom/android/server/BackupManagerService$ClearRetryParams;-><init>(Lcom/android/server/BackupManagerService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v13, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 5231
    .local v6, "msg":Landroid/os/Message;
    iget-object v11, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const-wide/32 v13, 0x36ee80

    invoke-virtual {v11, v6, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5232
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5242
    .end local v2    # "apps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v5    # "info":Landroid/content/pm/PackageInfo;
    .end local v6    # "msg":Landroid/os/Message;
    .end local v10    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_1
    :goto_0
    return-void

    .line 5195
    :catch_0
    move-exception v3

    .line 5196
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No such package \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' - not clearing backup data"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5209
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5    # "info":Landroid/content/pm/PackageInfo;
    :cond_2
    const-string v11, "BackupManagerService"

    const-string v12, "Privileged caller, allowing clear of other apps"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5210
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 5211
    .restart local v2    # "apps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 5212
    .local v1, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_0

    .line 5213
    iget-object v11, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashSet;

    .line 5214
    .local v9, "s":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v9, :cond_3

    .line 5215
    invoke-virtual {v2, v9}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 5212
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5234
    .end local v1    # "N":I
    .end local v4    # "i":I
    .end local v9    # "s":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v10    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_4
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 5235
    .local v7, "oldId":J
    iget-object v11, p0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5236
    iget-object v11, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v13, 0x4

    new-instance v14, Lcom/android/server/BackupManagerService$ClearParams;

    invoke-direct {v14, p0, v10, v5}, Lcom/android/server/BackupManagerService$ClearParams;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v11, v13, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 5238
    .restart local v6    # "msg":Landroid/os/Message;
    iget-object v11, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v11, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5239
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5240
    monitor-exit v12

    goto :goto_0

    .end local v6    # "msg":Landroid/os/Message;
    .end local v7    # "oldId":J
    .end local v10    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11
.end method

.method clearBackupTrace()V
    .locals 2

    .prologue
    .line 826
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mBackupTrace:Ljava/util/List;

    monitor-enter v1

    .line 827
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mBackupTrace:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 828
    monitor-exit v1

    .line 830
    return-void

    .line 828
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method clearRestoreSession(Lcom/android/server/BackupManagerService$ActiveRestoreSession;)V
    .locals 2
    .param p1, "currentSession"    # Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    .prologue
    .line 5962
    monitor-enter p0

    .line 5963
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    if-eq p1, v0, :cond_0

    .line 5964
    const-string v0, "BackupManagerService"

    const-string v1, "ending non-current restore session"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5970
    :goto_0
    monitor-exit p0

    .line 5971
    return-void

    .line 5966
    :cond_0
    const-string v0, "BackupManagerService"

    const-string v1, "Clearing restore session and halting timeout"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5967
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    .line 5968
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 5970
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dataChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 5163
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 5164
    .local v0, "callingUserHandle":I
    if-eqz v0, :cond_0

    .line 5187
    :goto_0
    return-void

    .line 5175
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    .line 5176
    .local v1, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 5177
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dataChanged but no participant pkg=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5182
    :cond_1
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    new-instance v3, Lcom/android/server/BackupManagerService$2;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/BackupManagerService$2;-><init>(Lcom/android/server/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method deviceIsProvisioned()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5265
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5266
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 6277
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    const-string v4, "BackupManagerService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6279
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6281
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/BackupManagerService;->dumpInternal(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6283
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6285
    return-void

    .line 6283
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZZ[Ljava/lang/String;)V
    .locals 14
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "includeApks"    # Z
    .param p3, "includeObbs"    # Z
    .param p4, "includeShared"    # Z
    .param p5, "doAllApps"    # Z
    .param p6, "includeSystem"    # Z
    .param p7, "pkgList"    # [Ljava/lang/String;

    .prologue
    .line 5275
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string v4, "fullBackup"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5277
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    .line 5278
    .local v10, "callingUserHandle":I
    if-eqz v10, :cond_0

    .line 5279
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Backup supported only for the device owner"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5283
    :cond_0
    if-nez p5, :cond_2

    .line 5284
    if-nez p4, :cond_2

    .line 5288
    if-eqz p7, :cond_1

    move-object/from16 v0, p7

    array-length v2, v0

    if-nez v2, :cond_2

    .line 5289
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Backup requested but neither shared nor any apps named"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5295
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 5298
    .local v11, "oldId":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->deviceIsProvisioned()Z

    move-result v2

    if-nez v2, :cond_3

    .line 5299
    const-string v2, "BackupManagerService"

    const-string v3, "Full backup not supported before setup"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5334
    :try_start_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5338
    :goto_0
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5339
    const-string v2, "BackupManagerService"

    const-string v3, "Full backup processing complete."

    :goto_1
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5341
    return-void

    .line 5303
    :cond_3
    :try_start_2
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting full backup: apks="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " obb="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " shared="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " all="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pkgs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5306
    const-string v2, "BackupManagerService"

    const-string v3, "Beginning full backup..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5308
    new-instance v1, Lcom/android/server/BackupManagerService$FullBackupParams;

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/server/BackupManagerService$FullBackupParams;-><init>(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;ZZZZZ[Ljava/lang/String;)V

    .line 5310
    .local v1, "params":Lcom/android/server/BackupManagerService$FullBackupParams;
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->generateToken()I

    move-result v13

    .line 5311
    .local v13, "token":I
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5312
    :try_start_3
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v2, v13, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5313
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5316
    :try_start_4
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting backup confirmation UI, token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5317
    const-string v2, "fullback"

    invoke-virtual {p0, v13, v2}, Lcom/android/server/BackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 5318
    const-string v2, "BackupManagerService"

    const-string v3, "Unable to launch full backup confirmation"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5319
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v2, v13}, Landroid/util/SparseArray;->delete(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5334
    :try_start_5
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 5338
    :goto_2
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5339
    const-string v2, "BackupManagerService"

    const-string v3, "Full backup processing complete."

    goto/16 :goto_1

    .line 5313
    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 5333
    .end local v1    # "params":Lcom/android/server/BackupManagerService$FullBackupParams;
    .end local v13    # "token":I
    :catchall_1
    move-exception v2

    .line 5334
    :try_start_8
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 5338
    :goto_3
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5339
    const-string v3, "BackupManagerService"

    const-string v4, "Full backup processing complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5333
    throw v2

    .line 5324
    .restart local v1    # "params":Lcom/android/server/BackupManagerService$FullBackupParams;
    .restart local v13    # "token":I
    :cond_4
    :try_start_9
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 5327
    invoke-virtual {p0, v13, v1}, Lcom/android/server/BackupManagerService;->startConfirmationTimeout(ILcom/android/server/BackupManagerService$FullParams;)V

    .line 5330
    const-string v2, "BackupManagerService"

    const-string v3, "Waiting for full backup completion..."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5331
    invoke-virtual {p0, v1}, Lcom/android/server/BackupManagerService;->waitForCompletion(Lcom/android/server/BackupManagerService$FullParams;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 5334
    :try_start_a
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 5338
    :goto_4
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5339
    const-string v2, "BackupManagerService"

    const-string v3, "Full backup processing complete."

    goto/16 :goto_1

    .line 5335
    .end local v1    # "params":Lcom/android/server/BackupManagerService$FullBackupParams;
    .end local v13    # "token":I
    :catch_0
    move-exception v3

    goto :goto_3

    :catch_1
    move-exception v2

    goto/16 :goto_0

    .restart local v1    # "params":Lcom/android/server/BackupManagerService$FullBackupParams;
    .restart local v13    # "token":I
    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_4
.end method

.method public fullBackupWithoutConfirm(Landroid/os/ParcelFileDescriptor;ZZZZZ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .locals 15
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "includeApks"    # Z
    .param p3, "includeObbs"    # Z
    .param p4, "includeShared"    # Z
    .param p5, "doAllApps"    # Z
    .param p6, "includeSystem"    # Z
    .param p7, "pkgList"    # [Ljava/lang/String;
    .param p8, "curPassword"    # Ljava/lang/String;
    .param p9, "encPassword"    # Ljava/lang/String;
    .param p10, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;

    .prologue
    .line 5401
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BACKUP"

    const-string v6, "fullBackup"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5406
    if-nez p5, :cond_1

    if-nez p4, :cond_1

    if-eqz p7, :cond_0

    move-object/from16 v0, p7

    array-length v4, v0

    if-nez v4, :cond_1

    .line 5407
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Backup requested but neither shared nor any apps named"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5411
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 5414
    .local v12, "oldId":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->deviceIsProvisioned()Z

    move-result v4

    if-nez v4, :cond_2

    .line 5415
    const-string v4, "BackupManagerService"

    const-string v5, "Full backup not supported before setup"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5416
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Full backup not supported before setup"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5438
    :catchall_0
    move-exception v4

    .line 5439
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5443
    :goto_0
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5444
    const-string v5, "BackupManagerService"

    const-string v6, "Full backup processing complete."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5438
    throw v4

    .line 5420
    :cond_2
    :try_start_2
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requesting full backup: apks="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " shared="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " all="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pkgs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5423
    const-string v4, "BackupManagerService"

    const-string v5, "Beginning full backup..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5425
    new-instance v3, Lcom/android/server/BackupManagerService$FullBackupParams;

    move-object v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Lcom/android/server/BackupManagerService$FullBackupParams;-><init>(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;ZZZZZ[Ljava/lang/String;)V

    .line 5427
    .local v3, "params":Lcom/android/server/BackupManagerService$FullBackupParams;
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->generateToken()I

    move-result v14

    .line 5428
    .local v14, "token":I
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5429
    :try_start_3
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v4, v14, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5430
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5432
    :try_start_4
    move-object/from16 v0, p8

    move-object/from16 v1, p9

    move-object/from16 v2, p10

    invoke-direct {p0, v14, v0, v1, v2}, Lcom/android/server/BackupManagerService;->doFullBackupOrRestore(ILjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 5435
    const-string v4, "BackupManagerService"

    const-string v5, "Waiting for full backup completion..."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5436
    invoke-virtual {p0, v3}, Lcom/android/server/BackupManagerService;->waitForCompletion(Lcom/android/server/BackupManagerService$FullParams;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5439
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 5443
    :goto_1
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5444
    const-string v4, "BackupManagerService"

    const-string v5, "Full backup processing complete."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5446
    return-void

    .line 5430
    :catchall_1
    move-exception v4

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 5440
    .end local v3    # "params":Lcom/android/server/BackupManagerService$FullBackupParams;
    .end local v14    # "token":I
    :catch_0
    move-exception v5

    goto/16 :goto_0

    .restart local v3    # "params":Lcom/android/server/BackupManagerService$FullBackupParams;
    .restart local v14    # "token":I
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public fullRestore(Landroid/os/ParcelFileDescriptor;)V
    .locals 10
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 5344
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.BACKUP"

    const-string v8, "fullRestore"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5346
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 5347
    .local v0, "callingUserHandle":I
    if-eqz v0, :cond_0

    .line 5348
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Restore supported only for the device owner"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 5351
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5356
    .local v2, "oldId":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->deviceIsProvisioned()Z

    move-result v6

    if-nez v6, :cond_1

    .line 5357
    const-string v6, "BackupManagerService"

    const-string v7, "Full restore not permitted before setup"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5388
    :try_start_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5392
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5393
    const-string v6, "BackupManagerService"

    const-string v7, "Full restore processing complete."

    :goto_1
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5395
    return-void

    .line 5361
    :cond_1
    :try_start_2
    const-string v6, "BackupManagerService"

    const-string v7, "Beginning full restore..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5363
    new-instance v4, Lcom/android/server/BackupManagerService$FullRestoreParams;

    invoke-direct {v4, p0, p1}, Lcom/android/server/BackupManagerService$FullRestoreParams;-><init>(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;)V

    .line 5364
    .local v4, "params":Lcom/android/server/BackupManagerService$FullRestoreParams;
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->generateToken()I

    move-result v5

    .line 5365
    .local v5, "token":I
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5366
    :try_start_3
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v6, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5367
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5370
    :try_start_4
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Starting restore confirmation UI, token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5371
    const-string v6, "fullrest"

    invoke-virtual {p0, v5, v6}, Lcom/android/server/BackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 5372
    const-string v6, "BackupManagerService"

    const-string v7, "Unable to launch full restore confirmation"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5373
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->delete(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5388
    :try_start_5
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 5392
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5393
    const-string v6, "BackupManagerService"

    const-string v7, "Full restore processing complete."

    goto :goto_1

    .line 5367
    :catchall_0
    move-exception v6

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 5387
    .end local v4    # "params":Lcom/android/server/BackupManagerService$FullRestoreParams;
    .end local v5    # "token":I
    :catchall_1
    move-exception v6

    .line 5388
    :try_start_8
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 5392
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5393
    const-string v7, "BackupManagerService"

    const-string v8, "Full restore processing complete."

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5387
    throw v6

    .line 5378
    .restart local v4    # "params":Lcom/android/server/BackupManagerService$FullRestoreParams;
    .restart local v5    # "token":I
    :cond_2
    :try_start_9
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 5381
    invoke-virtual {p0, v5, v4}, Lcom/android/server/BackupManagerService;->startConfirmationTimeout(ILcom/android/server/BackupManagerService$FullParams;)V

    .line 5384
    const-string v6, "BackupManagerService"

    const-string v7, "Waiting for full restore completion..."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5385
    invoke-virtual {p0, v4}, Lcom/android/server/BackupManagerService;->waitForCompletion(Lcom/android/server/BackupManagerService$FullParams;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 5388
    :try_start_a
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 5392
    :goto_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5393
    const-string v6, "BackupManagerService"

    const-string v7, "Full restore processing complete."

    goto/16 :goto_1

    .line 5389
    .end local v4    # "params":Lcom/android/server/BackupManagerService$FullRestoreParams;
    .end local v5    # "token":I
    :catch_0
    move-exception v1

    .line 5390
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error trying to close fd after full restore: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 5389
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 5390
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error trying to close fd after full restore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5389
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "params":Lcom/android/server/BackupManagerService$FullRestoreParams;
    .restart local v5    # "token":I
    :catch_2
    move-exception v1

    .line 5390
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error trying to close fd after full restore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 5389
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 5390
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error trying to close fd after full restore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public fullRestoreWithoutConfirm(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .locals 9
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "curPassword"    # Ljava/lang/String;
    .param p3, "encPassword"    # Ljava/lang/String;
    .param p4, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;

    .prologue
    .line 5450
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BACKUP"

    const-string v7, "fullRestore"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5452
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5457
    .local v1, "oldId":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->deviceIsProvisioned()Z

    move-result v5

    if-nez v5, :cond_0

    .line 5458
    const-string v5, "BackupManagerService"

    const-string v6, "Full restore not permitted before setup"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5459
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Full restore not permitted before setup"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5477
    :catchall_0
    move-exception v5

    .line 5478
    :try_start_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5482
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5483
    const-string v6, "BackupManagerService"

    const-string v7, "Full restore processing complete."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5477
    throw v5

    .line 5463
    :cond_0
    :try_start_2
    const-string v5, "BackupManagerService"

    const-string v6, "Beginning full restore..."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5465
    new-instance v3, Lcom/android/server/BackupManagerService$FullRestoreParams;

    invoke-direct {v3, p0, p1}, Lcom/android/server/BackupManagerService$FullRestoreParams;-><init>(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;)V

    .line 5466
    .local v3, "params":Lcom/android/server/BackupManagerService$FullRestoreParams;
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->generateToken()I

    move-result v4

    .line 5467
    .local v4, "token":I
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5468
    :try_start_3
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5469
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5471
    :try_start_4
    invoke-direct {p0, v4, p2, p3, p4}, Lcom/android/server/BackupManagerService;->doFullBackupOrRestore(ILjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 5474
    const-string v5, "BackupManagerService"

    const-string v6, "Waiting for full restore completion..."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5475
    invoke-virtual {p0, v3}, Lcom/android/server/BackupManagerService;->waitForCompletion(Lcom/android/server/BackupManagerService$FullParams;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5478
    :try_start_5
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 5482
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5483
    const-string v5, "BackupManagerService"

    const-string v6, "Full restore processing complete."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5486
    return-void

    .line 5469
    :catchall_1
    move-exception v5

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 5479
    .end local v3    # "params":Lcom/android/server/BackupManagerService$FullRestoreParams;
    .end local v4    # "token":I
    :catch_0
    move-exception v0

    .line 5480
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error trying to close fd after full restore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5479
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "params":Lcom/android/server/BackupManagerService$FullRestoreParams;
    .restart local v4    # "token":I
    :catch_1
    move-exception v0

    .line 5480
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error trying to close fd after full restore: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method generateToken()I
    .locals 3

    .prologue
    .line 488
    :cond_0
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    monitor-enter v2

    .line 489
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 490
    .local v0, "token":I
    monitor-exit v2

    .line 491
    if-ltz v0, :cond_0

    .line 492
    return v0

    .line 490
    .end local v0    # "token":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getAvailableRestoreToken(Ljava/lang/String;)J
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1822
    iget-wide v0, p0, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    .line 1823
    .local v0, "token":J
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1824
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1825
    iget-wide v0, p0, Lcom/android/server/BackupManagerService;->mCurrentToken:J

    .line 1827
    :cond_0
    monitor-exit v3

    .line 1828
    return-wide v0

    .line 1827
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    .line 5782
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string v4, "getConfigurationIntent"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5785
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    monitor-enter v3

    .line 5786
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/backup/IBackupTransport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5787
    .local v1, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v1, :cond_0

    .line 5789
    :try_start_1
    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->configurationIntent()Landroid/content/Intent;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 5792
    .local v0, "intent":Landroid/content/Intent;
    :try_start_2
    monitor-exit v3

    .line 5799
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v0

    .line 5793
    :catch_0
    move-exception v2

    .line 5797
    :cond_0
    monitor-exit v3

    .line 5799
    const/4 v0, 0x0

    goto :goto_0

    .line 5797
    .end local v1    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5731
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getCurrentTransport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5734
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    .line 5808
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string v4, "getDestinationString"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5811
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    monitor-enter v3

    .line 5812
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/backup/IBackupTransport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5813
    .local v1, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v1, :cond_0

    .line 5815
    :try_start_1
    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->currentDestinationString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 5817
    .local v0, "text":Ljava/lang/String;
    :try_start_2
    monitor-exit v3

    .line 5824
    .end local v0    # "text":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 5818
    :catch_0
    move-exception v2

    .line 5822
    :cond_0
    monitor-exit v3

    .line 5824
    const/4 v0, 0x0

    goto :goto_0

    .line 5822
    .end local v1    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method handleTimeout(ILjava/lang/Object;)V
    .locals 7
    .param p1, "token"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, -0x1

    .line 1891
    const/4 v1, 0x0

    .line 1892
    .local v1, "op":Lcom/android/server/BackupManagerService$Operation;
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1893
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/BackupManagerService$Operation;

    move-object v1, v0

    .line 1898
    if-eqz v1, :cond_0

    iget v2, v1, Lcom/android/server/BackupManagerService$Operation;->state:I

    .line 1899
    .local v2, "state":I
    :cond_0
    if-nez v2, :cond_1

    .line 1900
    const-string v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TIMEOUT: token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    const/4 v3, -0x1

    iput v3, v1, Lcom/android/server/BackupManagerService$Operation;->state:I

    .line 1902
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1904
    :cond_1
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1905
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1908
    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/android/server/BackupManagerService$Operation;->callback:Lcom/android/server/BackupManagerService$BackupRestoreTask;

    if-eqz v3, :cond_2

    .line 1909
    iget-object v3, v1, Lcom/android/server/BackupManagerService$Operation;->callback:Lcom/android/server/BackupManagerService$BackupRestoreTask;

    invoke-interface {v3}, Lcom/android/server/BackupManagerService$BackupRestoreTask;->handleTimeout()V

    .line 1911
    :cond_2
    return-void

    .line 1905
    .end local v2    # "state":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public hasBackupPassword()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1348
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string v4, "hasBackupPassword"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v2}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_1

    .line 1357
    :cond_0
    :goto_0
    return v1

    .line 1352
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1354
    :catch_0
    move-exception v0

    .line 1357
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public isBackupEnabled()Z
    .locals 3

    .prologue
    .line 5725
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "isBackupEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5726
    iget-boolean v0, p0, Lcom/android/server/BackupManagerService;->mEnabled:Z

    return v0
.end method

.method public listAllTransports()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 5739
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BACKUP"

    const-string v6, "listAllTransports"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5741
    const/4 v3, 0x0

    .line 5742
    .local v3, "list":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5743
    .local v2, "known":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5744
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 5745
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5749
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;>;"
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 5750
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 5751
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5753
    :cond_2
    return-object v3
.end method

.method logBackupComplete(Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1633
    const-string v3, "@pm@"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1649
    :goto_0
    return-void

    .line 1635
    :cond_0
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    monitor-enter v4

    .line 1636
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    monitor-exit v4

    goto :goto_0

    .line 1648
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1638
    :cond_1
    const/4 v1, 0x0

    .line 1640
    .local v1, "out":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    const-string v5, "rws"

    invoke-direct {v2, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1641
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .local v2, "out":Ljava/io/RandomAccessFile;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1642
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1646
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_1
    move-object v1, v2

    .line 1648
    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    :cond_3
    :goto_2
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1643
    :catch_0
    move-exception v0

    .line 1644
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    const-string v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t log backup of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1646
    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    :goto_4
    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_4
    :goto_5
    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_2
    move-exception v5

    goto :goto_5

    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v3

    goto :goto_1

    :catchall_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 1643
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    goto :goto_3
.end method

.method public opComplete(I)V
    .locals 6
    .param p1, "token"    # I

    .prologue
    .line 5978
    const/4 v2, 0x0

    .line 5979
    .local v2, "op":Lcom/android/server/BackupManagerService$Operation;
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 5980
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/BackupManagerService$Operation;

    move-object v2, v0

    .line 5981
    if-eqz v2, :cond_0

    .line 5982
    const/4 v3, 0x1

    iput v3, v2, Lcom/android/server/BackupManagerService$Operation;->state:I

    .line 5984
    :cond_0
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 5985
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5988
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/server/BackupManagerService$Operation;->callback:Lcom/android/server/BackupManagerService$BackupRestoreTask;

    if-eqz v3, :cond_1

    .line 5989
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v4, 0x15

    iget-object v5, v2, Lcom/android/server/BackupManagerService$Operation;->callback:Lcom/android/server/BackupManagerService$BackupRestoreTask;

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 5990
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5992
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    return-void

    .line 5985
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method passwordMatchesSaved(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "candidatePw"    # Ljava/lang/String;
    .param p2, "rounds"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1242
    :try_start_0
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v6}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v6

    if-eq v6, v4, :cond_1

    move v2, v4

    .line 1243
    .local v2, "isEncrypted":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 1245
    const-string v6, "BackupManagerService"

    const-string v7, "Device encrypted; verifying against device data pw"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v6, p1}, Landroid/os/storage/IMountService;->verifyEncryptionPassword(Ljava/lang/String;)I

    move-result v3

    .line 1252
    .local v3, "result":I
    if-nez v3, :cond_2

    .line 1288
    .end local v2    # "isEncrypted":Z
    .end local v3    # "result":I
    :cond_0
    :goto_1
    return v4

    :cond_1
    move v2, v5

    .line 1242
    goto :goto_0

    .line 1255
    .restart local v2    # "isEncrypted":Z
    .restart local v3    # "result":I
    :cond_2
    const/4 v4, -0x2

    if-eq v3, v4, :cond_3

    move v4, v5

    .line 1257
    goto :goto_1

    .line 1263
    :cond_3
    const-string v4, "BackupManagerService"

    const-string v6, "verified encryption state mismatch against query; no match allowed"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 1264
    goto :goto_1

    .line 1267
    .end local v2    # "isEncrypted":Z
    .end local v3    # "result":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move v4, v5

    .line 1270
    goto :goto_1

    .line 1273
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "isEncrypted":Z
    :cond_4
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    if-nez v6, :cond_6

    .line 1275
    if-eqz p1, :cond_0

    const-string v6, ""

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_5
    move v4, v5

    .line 1288
    goto :goto_1

    .line 1280
    :cond_6
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 1281
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mPasswordSalt:[B

    invoke-direct {p0, p1, v6, p2}, Lcom/android/server/BackupManagerService;->buildPasswordHash(Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v0

    .line 1282
    .local v0, "currentPwHash":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_1
.end method

.method prepareOperationTimeout(IJLcom/android/server/BackupManagerService$BackupRestoreTask;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "interval"    # J
    .param p4, "callback"    # Lcom/android/server/BackupManagerService$BackupRestoreTask;

    .prologue
    .line 1848
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1849
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/BackupManagerService$Operation;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, p4}, Lcom/android/server/BackupManagerService$Operation;-><init>(Lcom/android/server/BackupManagerService;ILcom/android/server/BackupManagerService$BackupRestoreTask;)V

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1851
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1852
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1853
    monitor-exit v2

    .line 1854
    return-void

    .line 1853
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method recordInitPendingLocked(ZLjava/lang/String;)V
    .locals 9
    .param p1, "isPending"    # Z
    .param p2, "transportName"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0xb

    const/4 v5, 0x0

    .line 1364
    const-string v4, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "recordInitPendingLocked: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " on transport "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1369
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    .line 1370
    .local v2, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v2, :cond_2

    .line 1371
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v3

    .line 1372
    .local v3, "transportDirName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v1, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1373
    .local v1, "stateDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v4, "_need_init_"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1375
    .local v0, "initPendingFile":Ljava/io/File;
    if-eqz p1, :cond_1

    .line 1379
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v4, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1381
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1408
    .end local v0    # "initPendingFile":Ljava/io/File;
    .end local v1    # "stateDir":Ljava/io/File;
    .end local v2    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v3    # "transportDirName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1387
    .restart local v0    # "initPendingFile":Ljava/io/File;
    .restart local v1    # "stateDir":Ljava/io/File;
    .restart local v2    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v3    # "transportDirName":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1388
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v4, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1392
    .end local v0    # "initPendingFile":Ljava/io/File;
    .end local v1    # "stateDir":Ljava/io/File;
    .end local v2    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v3    # "transportDirName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1399
    :cond_2
    if-eqz p1, :cond_0

    .line 1400
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v4, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1401
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    if-eqz p1, :cond_3

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v7, v8, v4, v5, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/32 v7, 0x36ee80

    invoke-virtual {v6, v4, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1

    .line 1382
    .restart local v0    # "initPendingFile":Ljava/io/File;
    .restart local v1    # "stateDir":Ljava/io/File;
    .restart local v2    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v3    # "transportDirName":Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public registerTransportByName(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "component"    # Ljava/lang/String;
    .param p3, "transport"    # Lcom/android/internal/backup/IBackupTransport;

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "registerTransportByName"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BackupManagerService;->registerTransport(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V

    .line 1449
    return-void
.end method

.method removeEverBackedUp(Ljava/lang/String;)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1653
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing backed-up knowledge of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    monitor-enter v7

    .line 1660
    :try_start_0
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string v8, "processed.new"

    invoke-direct {v5, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1661
    .local v5, "tempKnownFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 1663
    .local v2, "known":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v6, "rws"

    invoke-direct {v3, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1664
    .end local v2    # "known":Ljava/io/RandomAccessFile;
    .local v3, "known":Ljava/io/RandomAccessFile;
    :try_start_2
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1665
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1666
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 1674
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 1679
    .end local v3    # "known":Ljava/io/RandomAccessFile;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "known":Ljava/io/RandomAccessFile;
    :goto_1
    :try_start_3
    const-string v6, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error rewriting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1680
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 1681
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1682
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1684
    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1686
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1687
    return-void

    .line 1669
    .end local v2    # "known":Ljava/io/RandomAccessFile;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "known":Ljava/io/RandomAccessFile;
    :cond_1
    :try_start_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1670
    const/4 v2, 0x0

    .line 1671
    .end local v3    # "known":Ljava/io/RandomAccessFile;
    .restart local v2    # "known":Ljava/io/RandomAccessFile;
    :try_start_7
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1672
    new-instance v6, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t rename "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1674
    .end local v1    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v0

    goto :goto_1

    .line 1684
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v2, :cond_2

    :try_start_8
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_2
    :goto_4
    :try_start_9
    throw v6

    .line 1686
    .end local v2    # "known":Ljava/io/RandomAccessFile;
    .end local v5    # "tempKnownFile":Ljava/io/File;
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v6

    .line 1684
    .restart local v2    # "known":Ljava/io/RandomAccessFile;
    .restart local v5    # "tempKnownFile":Ljava/io/File;
    :catch_2
    move-exception v8

    goto :goto_4

    :catch_3
    move-exception v6

    goto :goto_2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    if-eqz v2, :cond_0

    :try_start_a
    throw v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_2

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "known":Ljava/io/RandomAccessFile;
    .restart local v3    # "known":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3    # "known":Ljava/io/RandomAccessFile;
    .restart local v2    # "known":Ljava/io/RandomAccessFile;
    goto :goto_3
.end method

.method removePackageParticipantsLocked([Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "oldUid"    # I

    .prologue
    .line 1568
    if-nez p1, :cond_1

    .line 1569
    const-string v5, "BackupManagerService"

    const-string v6, "removePackageParticipants with null list"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    :cond_0
    return-void

    .line 1573
    :cond_1
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removePackageParticipantsLocked: uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1577
    .local v3, "pkg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 1578
    .local v4, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1579
    invoke-direct {p0, v4, v3}, Lcom/android/server/BackupManagerService;->removePackageFromSetLocked(Ljava/util/HashSet;Ljava/lang/String;)V

    .line 1580
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1582
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1575
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method resetBackupState(Ljava/io/File;)V
    .locals 12
    .param p1, "stateFileDir"    # Ljava/io/File;

    .prologue
    .line 1414
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1416
    :try_start_0
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->clear()V

    .line 1417
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 1419
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/server/BackupManagerService;->mCurrentToken:J

    .line 1420
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->writeRestoreTokens()V

    .line 1423
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .local v1, "arr$":[Ljava/io/File;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v7, v1, v3

    .line 1425
    .local v7, "sf":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "_need_init_"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1426
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1423
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1429
    .end local v7    # "sf":Ljava/io/File;
    :cond_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1432
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v9

    .line 1433
    :try_start_1
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1434
    .local v0, "N":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 1435
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    .line 1436
    .local v6, "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v6, :cond_2

    .line 1437
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1438
    .local v5, "packageName":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    goto :goto_2

    .line 1442
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 1429
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v4    # "len$":I
    :catchall_1
    move-exception v8

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v8

    .line 1434
    .restart local v0    # "N":I
    .restart local v1    # "arr$":[Ljava/io/File;
    .restart local v2    # "i":I
    .restart local v4    # "len$":I
    .restart local v6    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1442
    .end local v6    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_3
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1443
    return-void
.end method

.method public restoreAtInstall(Ljava/lang/String;I)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # I

    .prologue
    .line 5864
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 5865
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-system process uid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " attemping install-time restore"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5914
    :goto_0
    return-void

    .line 5870
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/BackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v5

    .line 5871
    .local v5, "restoreSet":J
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreAtInstall pkg="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " token="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " restoreSet="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5875
    iget-boolean v0, p0, Lcom/android/server/BackupManagerService;->mAutoRestore:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, v5, v0

    if-eqz v0, :cond_2

    .line 5877
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    .line 5878
    .local v2, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v2, :cond_1

    .line 5879
    const-string v0, "BackupManagerService"

    const-string v1, "No transport for install-time restore"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5889
    :cond_1
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v3

    .line 5894
    .local v3, "dirName":Ljava/lang/String;
    new-instance v7, Landroid/content/pm/PackageInfo;

    invoke-direct {v7}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 5895
    .local v7, "pkg":Landroid/content/pm/PackageInfo;
    iput-object p1, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 5897
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5898
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 5899
    .local v11, "msg":Landroid/os/Message;
    new-instance v0, Lcom/android/server/BackupManagerService$RestoreParams;

    const/4 v4, 0x0

    const/4 v9, 0x1

    move-object v1, p0

    move v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/BackupManagerService$RestoreParams;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;IZ)V

    iput-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5901
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5902
    .end local v3    # "dirName":Ljava/lang/String;
    .end local v7    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v11    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v10

    .line 5904
    .local v10, "e":Landroid/os/RemoteException;
    const-string v0, "BackupManagerService"

    const-string v1, "Unable to contact transport for install-time restore"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5909
    .end local v2    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v0, "BackupManagerService"

    const-string v1, "No restore set -- skipping restore"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5911
    :try_start_1
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p2}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 5912
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "transport"    # Ljava/lang/String;

    .prologue
    .line 5760
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "selectBackupTransport"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5762
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    monitor-enter v2

    .line 5763
    const/4 v0, 0x0

    .line 5764
    .local v0, "prevTransport":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5765
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 5766
    iput-object p1, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 5767
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "backup_transport"

    invoke-static {v1, v3, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5769
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectBackupTransport() set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " returning "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5774
    :goto_0
    monitor-exit v2

    return-object v0

    .line 5772
    :cond_0
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to select unavailable transport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5775
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAutoRestore(Z)V
    .locals 3
    .param p1, "doAutoRestore"    # Z

    .prologue
    .line 5683
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "setAutoRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5686
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto restore => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5688
    monitor-enter p0

    .line 5689
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "backup_auto_restore"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5691
    iput-boolean p1, p0, Lcom/android/server/BackupManagerService;->mAutoRestore:Z

    .line 5692
    monitor-exit p0

    .line 5693
    return-void

    .line 5689
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 5692
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBackupEnabled(Z)V
    .locals 12
    .param p1, "enable"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 5633
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.BACKUP"

    const-string v10, "setBackupEnabled"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5636
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Backup enabled => "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5638
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5640
    .local v2, "oldId":J
    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/BackupManagerService;->mEnabled:Z

    .line 5641
    .local v5, "wasEnabled":Z
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5642
    :try_start_1
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "backup_enabled"

    if-eqz p1, :cond_1

    :goto_0
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5644
    iput-boolean p1, p0, Lcom/android/server/BackupManagerService;->mEnabled:Z

    .line 5645
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5647
    :try_start_2
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5648
    if-eqz p1, :cond_2

    if-nez v5, :cond_2

    :try_start_3
    iget-boolean v6, p0, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    if-eqz v6, :cond_2

    .line 5650
    const-wide/32 v8, 0x36ee80

    invoke-direct {p0, v8, v9}, Lcom/android/server/BackupManagerService;->startBackupAlarmsLocked(J)V

    .line 5675
    :cond_0
    :goto_1
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 5677
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5679
    return-void

    :cond_1
    move v6, v7

    .line 5642
    goto :goto_0

    .line 5645
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 5677
    .end local v5    # "wasEnabled":Z
    :catchall_1
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 5651
    .restart local v5    # "wasEnabled":Z
    :cond_2
    if-nez p1, :cond_0

    .line 5653
    :try_start_6
    const-string v6, "BackupManagerService"

    const-string v8, "Opting out of backup"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5655
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 5660
    if-eqz v5, :cond_0

    iget-boolean v6, p0, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    if-eqz v6, :cond_0

    .line 5664
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 5665
    :try_start_7
    new-instance v0, Ljava/util/HashSet;

    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 5666
    .local v0, "allTransports":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 5668
    :try_start_8
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5669
    .local v4, "transport":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {p0, v6, v4}, Lcom/android/server/BackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V

    goto :goto_2

    .line 5675
    .end local v0    # "allTransports":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "transport":Ljava/lang/String;
    :catchall_2
    move-exception v6

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 5666
    :catchall_3
    move-exception v6

    :try_start_a
    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v6

    .line 5671
    .restart local v0    # "allTransports":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v11, p0, Lcom/android/server/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_1
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "currentPw"    # Ljava/lang/String;
    .param p2, "newPw"    # Ljava/lang/String;

    .prologue
    .line 1293
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BACKUP"

    const-string v11, "setBackupPassword"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    const/16 v9, 0x2710

    invoke-virtual {p0, p1, v9}, Lcom/android/server/BackupManagerService;->passwordMatchesSaved(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1298
    const/4 v9, 0x0

    .line 1343
    :cond_0
    :goto_0
    return v9

    .line 1302
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1303
    :cond_2
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1304
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_3

    .line 1306
    const-string v9, "BackupManagerService"

    const-string v10, "Unable to clear backup password"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    const/4 v9, 0x0

    goto :goto_0

    .line 1310
    :cond_3
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    .line 1311
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/BackupManagerService;->mPasswordSalt:[B

    .line 1312
    const/4 v9, 0x1

    goto :goto_0

    .line 1317
    :cond_4
    const/16 v9, 0x200

    :try_start_0
    invoke-direct {p0, v9}, Lcom/android/server/BackupManagerService;->randomBytes(I)[B

    move-result-object v8

    .line 1318
    .local v8, "salt":[B
    const/16 v9, 0x2710

    invoke-direct {p0, p2, v8, v9}, Lcom/android/server/BackupManagerService;->buildPasswordHash(Ljava/lang/String;[BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1320
    .local v3, "newPwHash":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "pwf":Ljava/io/OutputStream;
    const/4 v0, 0x0

    .line 1321
    .local v0, "buffer":Ljava/io/OutputStream;
    const/4 v4, 0x0

    .line 1323
    .local v4, "out":Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    invoke-direct {v7, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1324
    .end local v6    # "pwf":Ljava/io/OutputStream;
    .local v7, "pwf":Ljava/io/OutputStream;
    :try_start_2
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1325
    .end local v0    # "buffer":Ljava/io/OutputStream;
    .local v1, "buffer":Ljava/io/OutputStream;
    :try_start_3
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1328
    .end local v4    # "out":Ljava/io/DataOutputStream;
    .local v5, "out":Ljava/io/DataOutputStream;
    :try_start_4
    array-length v9, v8

    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1329
    invoke-virtual {v5, v8}, Ljava/io/OutputStream;->write([B)V

    .line 1330
    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1331
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 1332
    iput-object v3, p0, Lcom/android/server/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    .line 1333
    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mPasswordSalt:[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1334
    const/4 v9, 0x1

    .line 1336
    if-eqz v5, :cond_5

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FilterOutputStream;->close()V

    .line 1337
    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 1338
    :cond_6
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 1340
    .end local v1    # "buffer":Ljava/io/OutputStream;
    .end local v3    # "newPwHash":Ljava/lang/String;
    .end local v5    # "out":Ljava/io/DataOutputStream;
    .end local v7    # "pwf":Ljava/io/OutputStream;
    .end local v8    # "salt":[B
    :catch_0
    move-exception v2

    .line 1341
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "BackupManagerService"

    const-string v10, "Unable to set backup password"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    const/4 v9, 0x0

    goto :goto_0

    .line 1336
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":Ljava/io/OutputStream;
    .restart local v3    # "newPwHash":Ljava/lang/String;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v6    # "pwf":Ljava/io/OutputStream;
    .restart local v8    # "salt":[B
    :catchall_0
    move-exception v9

    :goto_1
    if-eqz v4, :cond_7

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FilterOutputStream;->close()V

    .line 1337
    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 1338
    :cond_8
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 1336
    :cond_9
    throw v9
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .end local v6    # "pwf":Ljava/io/OutputStream;
    .restart local v7    # "pwf":Ljava/io/OutputStream;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7    # "pwf":Ljava/io/OutputStream;
    .restart local v6    # "pwf":Ljava/io/OutputStream;
    goto :goto_1

    .end local v0    # "buffer":Ljava/io/OutputStream;
    .end local v6    # "pwf":Ljava/io/OutputStream;
    .restart local v1    # "buffer":Ljava/io/OutputStream;
    .restart local v7    # "pwf":Ljava/io/OutputStream;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1    # "buffer":Ljava/io/OutputStream;
    .restart local v0    # "buffer":Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7    # "pwf":Ljava/io/OutputStream;
    .restart local v6    # "pwf":Ljava/io/OutputStream;
    goto :goto_1

    .end local v0    # "buffer":Ljava/io/OutputStream;
    .end local v4    # "out":Ljava/io/DataOutputStream;
    .end local v6    # "pwf":Ljava/io/OutputStream;
    .restart local v1    # "buffer":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/DataOutputStream;
    .restart local v7    # "pwf":Ljava/io/OutputStream;
    :catchall_3
    move-exception v9

    move-object v4, v5

    .end local v5    # "out":Ljava/io/DataOutputStream;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1    # "buffer":Ljava/io/OutputStream;
    .restart local v0    # "buffer":Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7    # "pwf":Ljava/io/OutputStream;
    .restart local v6    # "pwf":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public setBackupProvisioned(Z)V
    .locals 3
    .param p1, "available"    # Z

    .prologue
    .line 5697
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "setBackupProvisioned"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5702
    return-void
.end method

.method signalFullBackupRestoreCompletion(Lcom/android/server/BackupManagerService$FullParams;)V
    .locals 3
    .param p1, "params"    # Lcom/android/server/BackupManagerService$FullParams;

    .prologue
    .line 5565
    iget-object v1, p1, Lcom/android/server/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 5566
    :try_start_0
    iget-object v0, p1, Lcom/android/server/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5567
    iget-object v0, p1, Lcom/android/server/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 5568
    monitor-exit v1

    .line 5569
    return-void

    .line 5568
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method startConfirmationTimeout(ILcom/android/server/BackupManagerService$FullParams;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "params"    # Lcom/android/server/BackupManagerService$FullParams;

    .prologue
    .line 5549
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5551
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5552
    return-void
.end method

.method startConfirmationUi(ILjava/lang/String;)Z
    .locals 4
    .param p1, "token"    # I
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 5534
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5535
    .local v0, "confIntent":Landroid/content/Intent;
    const-string v2, "com.android.backupconfirm"

    const-string v3, "com.android.backupconfirm.BackupRestoreConfirmation"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5537
    const-string v2, "conftoken"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5538
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5539
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5543
    const/4 v2, 0x1

    .end local v0    # "confIntent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 5540
    :catch_0
    move-exception v1

    .line 5541
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method waitForCompletion(Lcom/android/server/BackupManagerService$FullParams;)V
    .locals 2
    .param p1, "params"    # Lcom/android/server/BackupManagerService$FullParams;

    .prologue
    .line 5555
    iget-object v1, p1, Lcom/android/server/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 5556
    :goto_0
    :try_start_0
    iget-object v0, p1, Lcom/android/server/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 5558
    :try_start_1
    iget-object v0, p1, Lcom/android/server/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5559
    :catch_0
    move-exception v0

    goto :goto_0

    .line 5561
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 5562
    return-void

    .line 5561
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method waitUntilOperationComplete(I)Z
    .locals 6
    .param p1, "token"    # I

    .prologue
    const/4 v4, 0x1

    .line 1860
    const/4 v1, 0x0

    .line 1861
    .local v1, "finalState":I
    const/4 v2, 0x0

    .line 1862
    .local v2, "op":Lcom/android/server/BackupManagerService$Operation;
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1864
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/BackupManagerService$Operation;

    move-object v2, v0

    .line 1865
    if-nez v2, :cond_0

    .line 1881
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1883
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1886
    if-ne v1, v4, :cond_2

    move v3, v4

    :goto_2
    return v3

    .line 1869
    :cond_0
    :try_start_1
    iget v3, v2, Lcom/android/server/BackupManagerService$Operation;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    .line 1871
    :try_start_2
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1872
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1876
    :cond_1
    :try_start_3
    iget v1, v2, Lcom/android/server/BackupManagerService$Operation;->state:I

    .line 1877
    goto :goto_1

    .line 1881
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 1886
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method writeRestoreTokens()V
    .locals 7

    .prologue
    .line 1694
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mTokenFile:Ljava/io/File;

    const-string v5, "rwd"

    invoke-direct {v0, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1697
    .local v0, "af":Ljava/io/RandomAccessFile;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1700
    iget-wide v4, p0, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1701
    iget-wide v4, p0, Lcom/android/server/BackupManagerService;->mCurrentToken:J

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1704
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    if-nez v4, :cond_1

    .line 1705
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1714
    :cond_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1718
    .end local v0    # "af":Ljava/io/RandomAccessFile;
    :goto_0
    return-void

    .line 1707
    .restart local v0    # "af":Ljava/io/RandomAccessFile;
    :cond_1
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1708
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ancestral packages:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1710
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1715
    .end local v0    # "af":Ljava/io/RandomAccessFile;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1716
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    const-string v5, "Unable to write token file:"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
