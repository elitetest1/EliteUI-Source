.class public Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;
.super Ljava/lang/Object;
.source "GraphicsRendererPolicy.java"


# static fields
.field private static final blacklist ACTION_SCPM_UPDATE_RENDER_ENGINE_POLICY:Ljava/lang/String; = "com.samsung.android.scpm.policy.UPDATE.hwui-skiagl-blocklist"

.field private static final blacklist AGENT_POLICY_FILE_DIRECTORY:Ljava/lang/String; = "/data/system/"

.field private static final blacklist AGENT_POLICY_UPDATED_FILE_NAME:Ljava/lang/String; = "graphics_render_engine_policy.json"

.field private static final blacklist AGENT_POLICY_UPDATED_TEMP_FILE_NAME:Ljava/lang/String; = "graphics_render_engine_policy_temp.json"

.field private static final blacklist APP_ID:Ljava/lang/String; = "zhjjzjgalv"

.field public static final blacklist DEBUG:Z

.field private static final blacklist FRAMEWORK_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final blacklist SCPM_POLICY_NAME:Ljava/lang/String; = "hwui-skiagl-blocklist"

.field private static final blacklist TAG:Ljava/lang/String; = "GraphicsRendererPolicy"

.field private static final blacklist VERSION:Ljava/lang/String; = "1.0.0"


# instance fields
.field private final blacklist SCPM_URI_V2:Landroid/net/Uri;

.field private final blacklist mBlocklistChecker:Landroid/graphics/rendererpolicy/BlocklistChecker;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final blacklist mGraphicsRendererPolicyCipher:Landroid/graphics/rendererpolicy/GraphicsRendererPolicyCipher;

.field private final blacklist mScpmPolicyUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mScpmToken:Ljava/lang/String;


# direct methods
.method public static synthetic blacklist $r8$lambda$q_mzuRRwARYP3AKKDfE5sYEHf_M(Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->lambda$init$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutorService(Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mapplyPolicyToChecker(Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->applyPolicyToChecker()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloadScpmPolicy(Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->loadScpmPolicy(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtryScpmRegister(Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->tryScpmRegister()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->checkDebugLogEnable()Z

    move-result v0

    sput-boolean v0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "content://com.samsung.android.scpm.policy/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->SCPM_URI_V2:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->mScpmToken:Ljava/lang/String;

    new-instance v0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy$1;

    invoke-direct {v0, p0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy$1;-><init>(Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;)V

    iput-object v0, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->mScpmPolicyUpdateReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "Constructor GraphicsRendererPolicy"

    invoke-direct {p0, v0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->gLogD(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicyCipher;

    const-string/jumbo v1, "zhjjzjgalv"

    invoke-direct {v0, p1, v1}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicyCipher;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->mGraphicsRendererPolicyCipher:Landroid/graphics/rendererpolicy/GraphicsRendererPolicyCipher;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Landroid/graphics/rendererpolicy/BlocklistChecker;

    invoke-direct {p1}, Landroid/graphics/rendererpolicy/BlocklistChecker;-><init>()V

    iput-object p1, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->mBlocklistChecker:Landroid/graphics/rendererpolicy/BlocklistChecker;

    invoke-direct {p0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->init()V

    return-void
.end method

.method private blacklist applyPolicyToChecker()V
    .locals 1

    const-string v0, "applyPolicyToChecker"

    invoke-direct {p0, v0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->gLogD(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->getFdFromStoredPolicy()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "policyStream is null"

    invoke-direct {p0, v0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->gLogW(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->mBlocklistChecker:Landroid/graphics/rendererpolicy/BlocklistChecker;

    invoke-virtual {p0, v0}, Landroid/graphics/rendererpolicy/BlocklistChecker;->parseConfiguration(Ljava/io/InputStream;)V

    return-void
.end method

.method private blacklist callScpmApi(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    iget-object p0, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android"

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist checkDebugLogEnable()Z
    .locals 1

    invoke-static {}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->isDebugLogEnabledByProperties()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->isDebuggableBuildType()Z

    move-result v0

    return v0
.end method

.method private blacklist gLogD(Ljava/lang/String;)V
    .locals 0

    sget-boolean p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->DEBUG:Z

    if-eqz p0, :cond_0

    sget-object p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private blacklist gLogE(Ljava/lang/String;)V
    .locals 0

    sget-boolean p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->DEBUG:Z

    if-eqz p0, :cond_0

    sget-object p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private blacklist gLogW(Ljava/lang/String;)V
    .locals 0

    sget-boolean p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->DEBUG:Z

    if-eqz p0, :cond_0

    sget-object p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private blacklist getFdFromStoredPolicy()Ljava/io/InputStream;
    .locals 5

    const-string v0, "/data/system/"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "graphics_render_engine_policy.json"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v0, "getFdFromConfiguration encrypted File is not exist."

    invoke-direct {p0, v0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->gLogW(Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "tempFile"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->mGraphicsRendererPolicyCipher:Landroid/graphics/rendererpolicy/GraphicsRendererPolicyCipher;

    invoke-virtual {v4, v2, v0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicyCipher;->decrypt(Ljava/io/File;Ljava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getFdFromConfiguration failed. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->gLogE(Ljava/lang/String;)V

    return-object v1
.end method

.method private blacklist init()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->initForScpm()V

    iget-object v0, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist initForScpm()V
    .locals 3

    const-string/jumbo v0, "register GraphicRendererPolicy to get update render engine signal"

    invoke-direct {p0, v0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->gLogD(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.scpm.policy.UPDATE.hwui-skiagl-blocklist"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.scpm.policy.CLEAR_DATA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->mScpmPolicyUpdateReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private static blacklist isDebugLogEnabledByProperties()Z
    .locals 2

    const-string/jumbo v0, "persist.hwui.scpm.blocklist.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static blacklist isDebuggableBuildType()Z
    .locals 2

    const-string/jumbo v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist isScpmAvailable()Z
    .locals 2

    iget-object p0, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.android.scpm.policy"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private synthetic blacklist lambda$init$0()V
    .locals 1

    const-string/jumbo v0, "start agent policy loading"

    invoke-direct {p0, v0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->gLogD(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->tryScpmRegister()V

    invoke-direct {p0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->applyPolicyToChecker()V

    const-string v0, "end agent policy loading"

    invoke-direct {p0, v0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->gLogD(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist loadScpmPolicy(Landroid/content/Context;)V
    .locals 5

    const-string v0, "code="

    const-string v1, "load policy start"

    invoke-direct {p0, v1}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->gLogD(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->mScpmToken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "try to get new permission"

    invoke-direct {p0, v1}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->gLogD(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->registerAndGetScpmToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->mScpmToken:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->mScpmToken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "fail due to permission error"

    invoke-direct {p0, p1}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->gLogD(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://com.samsung.android.scpm.policy/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->mScpmToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/hwui-skiagl-blocklist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v2, "r"

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_3

    :try_start_1
    const-string/jumbo v2, "pfd is null"

    invoke-direct {p0, v2}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->gLogD(Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "token"

    iget-object v4, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->mScpmToken:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "getLastError"

    invoke-direct {p0, v1, v3, v2}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->callScpmApi(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "bundle is null"

    invoke-direct {p0, v0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->gLogD(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p1, :cond_7

    :goto_0
    :try_start_2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :cond_2
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "rcode"

    const/4 v3, -0x1

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", msg="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "rmsg"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->gLogD(Ljava/lang/String;)V

    if-eqz p1, :cond_7

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "fd is null"

    invoke-direct {p0, v0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->gLogD(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p1, :cond_7

    goto :goto_0

    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    invoke-direct {p0, v0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->storeScpmPolicyToFile(Ljava/lang/StringBuilder;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_8
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catch_0
    move-exception v0

    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to store data. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->gLogE(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_3
    if-eqz p1, :cond_7

    :try_start_a
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_5

    :catchall_2
    move-exception v0

    if-eqz p1, :cond_6

    :try_start_b
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    :try_start_c
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to get data. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->gLogE(Ljava/lang/String;)V

    :cond_7
    :goto_5
    return-void
.end method

.method private blacklist makeQueryInfo(Ljava/lang/String;)Landroid/graphics/rendererpolicy/QueryInfo;
    .locals 5

    const-string/jumbo v0, "ro.product.model"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ro.soc.model"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ro.build.version.release"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "makeQueryInfo - packageName: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", modelName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", chipsetName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", osVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->gLogD(Ljava/lang/String;)V

    new-instance p0, Landroid/graphics/rendererpolicy/QueryInfo;

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/graphics/rendererpolicy/QueryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0
.end method

.method private blacklist registerAndGetScpmToken()Ljava/lang/String;
    .locals 9

    const-string v0, "android"

    const-string v1, "failed to call : rCode = "

    invoke-direct {p0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->isScpmAvailable()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "packageName"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "appId"

    const-string/jumbo v5, "zhjjzjgalv"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "version"

    const-string v5, "1.0.0"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "receiverPackageName"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->SCPM_URI_V2:Landroid/net/Uri;

    const-string/jumbo v6, "register"

    invoke-virtual {v4, v5, v6, v0, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v2, "result"

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v5, "token"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "rcode"

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v7, "rmsg"

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-ne v2, v4, :cond_0

    const-string/jumbo v0, "success to call"

    invoke-direct {p0, v0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->gLogD(Ljava/lang/String;)V

    return-object v5

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rMsg = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->gLogD(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot register package. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->gLogE(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "service is not available."

    invoke-direct {p0, v0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->gLogD(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v3
.end method

.method private blacklist storeScpmPolicyToFile(Ljava/lang/StringBuilder;)V
    .locals 4

    const-string v0, "/data/system/"

    const-string v1, "HWUI Renderer policy begin ---------------------- "

    invoke-direct {p0, v1}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->gLogD(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->gLogD(Ljava/lang/String;)V

    const-string v1, " ------------------------- HWUI Renderer policy end"

    invoke-direct {p0, v1}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->gLogD(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p1, Ljava/io/File;

    const-string v2, "graphics_render_engine_policy_temp.json"

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->mGraphicsRendererPolicyCipher:Landroid/graphics/rendererpolicy/GraphicsRendererPolicyCipher;

    invoke-virtual {v2, v1, p1}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicyCipher;->encrypt(Ljava/io/InputStream;Ljava/io/File;)Z

    new-instance v2, Ljava/io/File;

    const-string v3, "graphics_render_engine_policy.json"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "original file deletion failed"

    invoke-direct {p0, v0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->gLogE(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string/jumbo p1, "temp file rename failed"

    invoke-direct {p0, p1}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->gLogE(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to store policy. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->gLogE(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist tryScpmRegister()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->registerAndGetScpmToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->mScpmToken:Ljava/lang/String;

    const-string/jumbo v0, "try to register "

    invoke-direct {p0, v0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->gLogD(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "register failed. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->gLogE(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist getRendererType(Ljava/lang/String;)I
    .locals 2

    invoke-direct {p0, p1}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->makeQueryInfo(Ljava/lang/String;)Landroid/graphics/rendererpolicy/QueryInfo;

    move-result-object v0

    iget-object p0, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->mBlocklistChecker:Landroid/graphics/rendererpolicy/BlocklistChecker;

    invoke-virtual {p0, v0}, Landroid/graphics/rendererpolicy/BlocklistChecker;->checkSkiaGlBlocklist(Landroid/graphics/rendererpolicy/QueryInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "pkg: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " need to use GL."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;->GL:Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;

    invoke-virtual {p0}, Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;->ordinal()I

    move-result p0

    return p0

    :cond_0
    sget-object p0, Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;->VK:Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;

    invoke-virtual {p0}, Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;->ordinal()I

    move-result p0

    return p0
.end method
