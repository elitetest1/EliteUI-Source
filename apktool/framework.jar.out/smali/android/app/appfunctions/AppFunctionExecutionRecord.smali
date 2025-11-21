.class public Landroid/app/appfunctions/AppFunctionExecutionRecord;
.super Ljava/lang/Object;
.source "AppFunctionExecutionRecord.java"


# static fields
.field private static final blacklist JSON_INDENTATION:Ljava/lang/Integer;

.field private static final blacklist MAX_STRING_MASKING_NUMBER:Ljava/lang/Integer;

.field private static final blacklist TAG:Ljava/lang/String; = "AppFunctionExecutionRecord"


# instance fields
.field private final blacklist TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

.field blacklist callingPackageVersion:Ljava/lang/String;

.field blacklist error:Landroid/app/appfunctions/AppFunctionException;

.field blacklist foregroundApps:Ljava/lang/String;

.field blacklist invocationTime:Ljava/time/LocalDateTime;

.field blacklist requestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

.field blacklist result:Landroid/app/appfunctions/ExecuteAppFunctionResponse;

.field blacklist returnTime:Ljava/time/LocalDateTime;

.field blacklist targetPackageVersion:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->JSON_INDENTATION:Ljava/lang/Integer;

    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->MAX_STRING_MASKING_NUMBER:Ljava/lang/Integer;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    iput-object v0, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->invocationTime:Ljava/time/LocalDateTime;

    iput-object p1, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->requestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    return-void
.end method

.method private blacklist getSystemUiPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x104003a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Landroid/app/appfunctions/AppFunctionExecutionRecord;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Package not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, ""

    return-object p0
.end method

.method private blacklist getVisibleApps(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class p0, Landroid/app/ActivityManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const p1, 0x7fffffff

    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private blacklist isKeyguardLocked(Landroid/content/Context;)Z
    .locals 0

    const-class p0, Landroid/app/KeyguardManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist setForegroundApps(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->getVisibleApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->getSystemUiPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string p1, ","

    invoke-static {p1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->foregroundApps:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method blacklist appendGenericDocumentToJson(Lorg/json/JSONObject;Landroid/app/appsearch/GenericDocument;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v0, "namespace"

    invoke-virtual {p2}, Landroid/app/appsearch/GenericDocument;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "id"

    invoke-virtual {p2}, Landroid/app/appsearch/GenericDocument;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "score"

    invoke-virtual {p2}, Landroid/app/appsearch/GenericDocument;->getScore()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "schemaType"

    invoke-virtual {p2}, Landroid/app/appsearch/GenericDocument;->getSchemaType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "creationTimestampMillis"

    invoke-virtual {p2}, Landroid/app/appsearch/GenericDocument;->getCreationTimestampMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "timeToLiveMillis"

    invoke-virtual {p2}, Landroid/app/appsearch/GenericDocument;->getTtlMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p2}, Landroid/app/appsearch/GenericDocument;->getPropertyNames()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {p2, v3}, Landroid/app/appsearch/GenericDocument;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, p1, v3, v4, p3}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->appendPropertyToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method blacklist appendPropertyToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    instance-of v0, p3, [Landroid/app/appsearch/GenericDocument;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    check-cast p3, [Landroid/app/appsearch/GenericDocument;

    array-length v2, p3

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p3, v1

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v4, v3, p4}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->appendGenericDocumentToJson(Lorg/json/JSONObject;Landroid/app/appsearch/GenericDocument;Z)V

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    :cond_1
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-static {p3, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    if-eqz p4, :cond_2

    invoke-virtual {p0, v3}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->maskData(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public blacklist getCallingPackage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->requestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    invoke-virtual {p0}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getCallingPackageVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->callingPackageVersion:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getDuration()J
    .locals 2

    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->invocationTime:Ljava/time/LocalDateTime;

    iget-object p0, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->returnTime:Ljava/time/LocalDateTime;

    invoke-static {v0, p0}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getForegroundApps()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->foregroundApps:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getFunctionIdentifier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->requestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    invoke-virtual {p0}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getFunctionIdentifier()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getInvocationTime()Ljava/time/LocalDateTime;
    .locals 0

    iget-object p0, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->invocationTime:Ljava/time/LocalDateTime;

    return-object p0
.end method

.method blacklist getResult(Z)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->result:Landroid/app/appfunctions/ExecuteAppFunctionResponse;

    const-string/jumbo v1, "{\n}"

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->getResultDocument()Landroid/app/appsearch/GenericDocument;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->toJson(Landroid/app/appsearch/GenericDocument;Z)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method

.method public blacklist getResultCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->error:Landroid/app/appfunctions/AppFunctionException;

    if-nez p0, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/appfunctions/AppFunctionException;->getErrorCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getTargetPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->requestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    invoke-virtual {p0}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getTargetPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getTargetPackageVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->targetPackageVersion:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist maskData(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string/jumbo p0, "null"

    return-object p0

    :cond_0
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    goto :goto_0

    :cond_1
    instance-of p0, p1, Ljava/lang/Number;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    goto :goto_0

    :cond_2
    instance-of p0, p1, [B

    if-eqz p0, :cond_3

    check-cast p1, [B

    array-length p0, p1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    :goto_0
    sget-object p1, Landroid/app/appfunctions/AppFunctionExecutionRecord;->MAX_STRING_MASKING_NUMBER:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "*"

    if-le p0, p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "~"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {v0, p0}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setError(Landroid/app/appfunctions/AppFunctionException;)V
    .locals 1

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    iput-object v0, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->returnTime:Ljava/time/LocalDateTime;

    iput-object p1, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->error:Landroid/app/appfunctions/AppFunctionException;

    return-void
.end method

.method public blacklist setExecutionRecord(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->callingPackageVersion:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->getTargetPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->targetPackageVersion:Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->setForegroundApps(Landroid/content/Context;)V

    return-void
.end method

.method public blacklist setResult(Landroid/app/appfunctions/ExecuteAppFunctionResponse;)V
    .locals 1

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    iput-object v0, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->returnTime:Ljava/time/LocalDateTime;

    iput-object p1, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->result:Landroid/app/appfunctions/ExecuteAppFunctionResponse;

    return-void
.end method

.method public blacklist toFullString(Z)Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, "|"

    const-string v1, "\n"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    iget-object v4, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->invocationTime:Ljava/time/LocalDateTime;

    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    iget-object v4, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->returnTime:Ljava/time/LocalDateTime;

    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "][duration :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->getDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  callingPackage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->callingPackageVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  targetPackage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->getTargetPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->targetPackageVersion:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  functionIdentifier : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->requestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    invoke-virtual {v0}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getFunctionIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  params :  "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->requestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    invoke-virtual {v0}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getParameters()Landroid/app/appsearch/GenericDocument;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->toJson(Landroid/app/appsearch/GenericDocument;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  result :  "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->getResult(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  resultCode : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->getResultCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Landroid/app/appfunctions/AppFunctionExecutionRecord;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "toFullString : "

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, "exception"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method blacklist toJson(Landroid/app/appsearch/GenericDocument;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->appendGenericDocumentToJson(Lorg/json/JSONObject;Landroid/app/appsearch/GenericDocument;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Landroid/app/appfunctions/AppFunctionExecutionRecord;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "toJson : "

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    sget-object p1, Landroid/app/appfunctions/AppFunctionExecutionRecord;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "toJson JSONException : "

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sget-object p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->JSON_INDENTATION:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toSummaryString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    iget-object v2, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->invocationTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1, v2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    iget-object v2, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->returnTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1, v2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "][duration :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms]\n  callingPackage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->callingPackageVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n  targetPackage : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->getTargetPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->targetPackageVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  functionIdentifier : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/appfunctions/AppFunctionExecutionRecord;->requestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    invoke-virtual {v1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getFunctionIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  resultCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->getResultCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
