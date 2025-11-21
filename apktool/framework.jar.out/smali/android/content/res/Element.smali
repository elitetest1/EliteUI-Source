.class public Landroid/content/res/Element;
.super Ljava/lang/Object;
.source "Element.java"


# static fields
.field private static final blacklist BAD_COMPONENT_NAME_CHARS:Ljava/lang/String; = ";,[](){}:?%^*|/\\"

.field private static final blacklist DEFAULT_MAX_STRING_ATTR_LENGTH:I = 0x8000

.field private static final blacklist MAX_ATTR_LEN_MIMETYPE:I = 0xff

.field private static final blacklist MAX_ATTR_LEN_NAME:I = 0x400

.field private static final blacklist MAX_ATTR_LEN_PACKAGE:I = 0x100

.field private static final blacklist MAX_ATTR_LEN_PATH:I = 0xfa0

.field private static final blacklist MAX_ATTR_LEN_PERMISSION_GROUP:I = 0x100

.field private static final blacklist MAX_ATTR_LEN_URL_COMPONENT:I = 0x100

.field private static final blacklist MAX_ATTR_LEN_VALUE:I = 0x8000

.field private static final blacklist MAX_POOL_SIZE:I = 0x80

.field private static final blacklist MAX_TOTAL_META_DATA_SIZE:I = 0x40000

.field private static final blacklist TAG:Ljava/lang/String; = "PackageParsing"

.field protected static final blacklist TAG_ACTION:Ljava/lang/String; = "action"

.field protected static final blacklist TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field protected static final blacklist TAG_ACTIVITY_ALIAS:Ljava/lang/String; = "activity-alias"

.field protected static final blacklist TAG_ADOPT_PERMISSIONS:Ljava/lang/String; = "adopt-permissions"

.field protected static final blacklist TAG_APPLICATION:Ljava/lang/String; = "application"

.field protected static final blacklist TAG_ATTRIBUTION:Ljava/lang/String; = "attribution"

.field protected static final blacklist TAG_ATTR_BACKUP_AGENT:Ljava/lang/String; = "backupAgent"

.field protected static final blacklist TAG_ATTR_CATEGORY:Ljava/lang/String; = "category"

.field protected static final blacklist TAG_ATTR_FRAGMENT:Ljava/lang/String; = "fragment"

.field protected static final blacklist TAG_ATTR_FRAGMENT_ADVANCED_PATTERN:Ljava/lang/String; = "fragmentAdvancedPattern"

.field protected static final blacklist TAG_ATTR_FRAGMENT_PATTERN:Ljava/lang/String; = "fragmentPattern"

.field protected static final blacklist TAG_ATTR_FRAGMENT_PREFIX:Ljava/lang/String; = "fragmentPrefix"

.field protected static final blacklist TAG_ATTR_FRAGMENT_SUFFIX:Ljava/lang/String; = "fragmentSuffix"

.field protected static final blacklist TAG_ATTR_HOST:Ljava/lang/String; = "host"

.field protected static final blacklist TAG_ATTR_MANAGE_SPACE_ACTIVITY:Ljava/lang/String; = "manageSpaceActivity"

.field protected static final blacklist TAG_ATTR_MIMEGROUP:Ljava/lang/String; = "mimeGroup"

.field protected static final blacklist TAG_ATTR_MIMETYPE:Ljava/lang/String; = "mimeType"

.field protected static final blacklist TAG_ATTR_NAME:Ljava/lang/String; = "name"

.field protected static final blacklist TAG_ATTR_PACKAGE:Ljava/lang/String; = "package"

.field protected static final blacklist TAG_ATTR_PARENT_ACTIVITY_NAME:Ljava/lang/String; = "parentActivityName"

.field protected static final blacklist TAG_ATTR_PATH:Ljava/lang/String; = "path"

.field protected static final blacklist TAG_ATTR_PATH_ADVANCED_PATTERN:Ljava/lang/String; = "pathAdvancedPattern"

.field protected static final blacklist TAG_ATTR_PATH_PATTERN:Ljava/lang/String; = "pathPattern"

.field protected static final blacklist TAG_ATTR_PATH_PREFIX:Ljava/lang/String; = "pathPrefix"

.field protected static final blacklist TAG_ATTR_PATH_SUFFIX:Ljava/lang/String; = "pathSuffix"

.field protected static final blacklist TAG_ATTR_PERMISSION:Ljava/lang/String; = "permission"

.field protected static final blacklist TAG_ATTR_PERMISSION_GROUP:Ljava/lang/String; = "permissionGroup"

.field protected static final blacklist TAG_ATTR_PORT:Ljava/lang/String; = "port"

.field protected static final blacklist TAG_ATTR_PROCESS:Ljava/lang/String; = "process"

.field protected static final blacklist TAG_ATTR_QUERY:Ljava/lang/String; = "query"

.field protected static final blacklist TAG_ATTR_QUERY_ADVANCED_PATTERN:Ljava/lang/String; = "queryAdvancedPattern"

.field protected static final blacklist TAG_ATTR_QUERY_PATTERN:Ljava/lang/String; = "queryPattern"

.field protected static final blacklist TAG_ATTR_QUERY_PREFIX:Ljava/lang/String; = "queryPrefix"

.field protected static final blacklist TAG_ATTR_QUERY_SUFFIX:Ljava/lang/String; = "querySuffix"

.field protected static final blacklist TAG_ATTR_READ_PERMISSION:Ljava/lang/String; = "readPermission"

.field protected static final blacklist TAG_ATTR_REQUIRED_ACCOUNT_TYPE:Ljava/lang/String; = "requiredAccountType"

.field protected static final blacklist TAG_ATTR_REQUIRED_SYSTEM_PROPERTY_NAME:Ljava/lang/String; = "requiredSystemPropertyName"

.field protected static final blacklist TAG_ATTR_REQUIRED_SYSTEM_PROPERTY_VALUE:Ljava/lang/String; = "requiredSystemPropertyValue"

.field protected static final blacklist TAG_ATTR_RESTRICTED_ACCOUNT_TYPE:Ljava/lang/String; = "restrictedAccountType"

.field protected static final blacklist TAG_ATTR_SCHEME:Ljava/lang/String; = "scheme"

.field protected static final blacklist TAG_ATTR_SHARED_USER_ID:Ljava/lang/String; = "sharedUserId"

.field protected static final blacklist TAG_ATTR_TARGET_ACTIVITY:Ljava/lang/String; = "targetActivity"

.field protected static final blacklist TAG_ATTR_TARGET_NAME:Ljava/lang/String; = "targetName"

.field protected static final blacklist TAG_ATTR_TARGET_PACKAGE:Ljava/lang/String; = "targetPackage"

.field protected static final blacklist TAG_ATTR_TARGET_PROCESSES:Ljava/lang/String; = "targetProcesses"

.field protected static final blacklist TAG_ATTR_TASK_AFFINITY:Ljava/lang/String; = "taskAffinity"

.field protected static final blacklist TAG_ATTR_VALUE:Ljava/lang/String; = "value"

.field protected static final blacklist TAG_ATTR_VERSION_NAME:Ljava/lang/String; = "versionName"

.field protected static final blacklist TAG_ATTR_WRITE_PERMISSION:Ljava/lang/String; = "writePermission"

.field protected static final blacklist TAG_ATTR_ZYGOTE_PRELOAD_NAME:Ljava/lang/String; = "zygotePreloadName"

.field protected static final blacklist TAG_CATEGORY:Ljava/lang/String; = "category"

.field protected static final blacklist TAG_COMPATIBLE_SCREENS:Ljava/lang/String; = "compatible-screens"

.field protected static final blacklist TAG_DATA:Ljava/lang/String; = "data"

.field protected static final blacklist TAG_EAT_COMMENT:Ljava/lang/String; = "eat-comment"

.field protected static final blacklist TAG_FEATURE_GROUP:Ljava/lang/String; = "feature-group"

.field protected static final blacklist TAG_GRANT_URI_PERMISSION:Ljava/lang/String; = "grant-uri-permission"

.field protected static final blacklist TAG_INSTRUMENTATION:Ljava/lang/String; = "instrumentation"

.field protected static final blacklist TAG_INTENT:Ljava/lang/String; = "intent"

.field protected static final blacklist TAG_INTENT_FILTER:Ljava/lang/String; = "intent-filter"

.field protected static final blacklist TAG_KEY_SETS:Ljava/lang/String; = "key-sets"

.field protected static final blacklist TAG_LAYOUT:Ljava/lang/String; = "layout"

.field protected static final blacklist TAG_MANIFEST:Ljava/lang/String; = "manifest"

.field protected static final blacklist TAG_META_DATA:Ljava/lang/String; = "meta-data"

.field protected static final blacklist TAG_ORIGINAL_PACKAGE:Ljava/lang/String; = "original-package"

.field protected static final blacklist TAG_OVERLAY:Ljava/lang/String; = "overlay"

.field protected static final blacklist TAG_PACKAGE:Ljava/lang/String; = "package"

.field protected static final blacklist TAG_PACKAGE_VERIFIER:Ljava/lang/String; = "package-verifier"

.field protected static final blacklist TAG_PATH_PERMISSION:Ljava/lang/String; = "path-permission"

.field protected static final blacklist TAG_PERMISSION:Ljava/lang/String; = "permission"

.field protected static final blacklist TAG_PERMISSION_GROUP:Ljava/lang/String; = "permission-group"

.field protected static final blacklist TAG_PERMISSION_TREE:Ljava/lang/String; = "permission-tree"

.field protected static final blacklist TAG_PROFILEABLE:Ljava/lang/String; = "profileable"

.field protected static final blacklist TAG_PROPERTY:Ljava/lang/String; = "property"

.field protected static final blacklist TAG_PROTECTED_BROADCAST:Ljava/lang/String; = "protected-broadcast"

.field protected static final blacklist TAG_PROVIDER:Ljava/lang/String; = "provider"

.field protected static final blacklist TAG_QUERIES:Ljava/lang/String; = "queries"

.field protected static final blacklist TAG_RECEIVER:Ljava/lang/String; = "receiver"

.field protected static final blacklist TAG_RESTRICT_UPDATE:Ljava/lang/String; = "restrict-update"

.field protected static final blacklist TAG_SCREEN:Ljava/lang/String; = "screen"

.field protected static final blacklist TAG_SERVICE:Ljava/lang/String; = "service"

.field protected static final blacklist TAG_SUPPORTS_GL_TEXTURE:Ljava/lang/String; = "supports-gl-texture"

.field protected static final blacklist TAG_SUPPORTS_INPUT:Ljava/lang/String; = "supports-input"

.field protected static final blacklist TAG_SUPPORTS_SCREENS:Ljava/lang/String; = "supports-screens"

.field protected static final blacklist TAG_SUPPORT_SCREENS:Ljava/lang/String; = "supports-screens"

.field protected static final blacklist TAG_URI_RELATIVE_FILTER_GROUP:Ljava/lang/String; = "uri-relative-filter-group"

.field protected static final blacklist TAG_USES_CONFIGURATION:Ljava/lang/String; = "uses-configuration"

.field protected static final blacklist TAG_USES_FEATURE:Ljava/lang/String; = "uses-feature"

.field protected static final blacklist TAG_USES_GL_TEXTURE:Ljava/lang/String; = "uses-gl-texture"

.field protected static final blacklist TAG_USES_LIBRARY:Ljava/lang/String; = "uses-library"

.field protected static final blacklist TAG_USES_NATIVE_LIBRARY:Ljava/lang/String; = "uses-native-library"

.field protected static final blacklist TAG_USES_PERMISSION:Ljava/lang/String; = "uses-permission"

.field protected static final blacklist TAG_USES_PERMISSION_SDK_23:Ljava/lang/String; = "uses-permission-sdk-23"

.field protected static final blacklist TAG_USES_PERMISSION_SDK_M:Ljava/lang/String; = "uses-permission-sdk-m"

.field protected static final blacklist TAG_USES_SDK:Ljava/lang/String; = "uses-sdk"

.field protected static final blacklist TAG_USES_SPLIT:Ljava/lang/String; = "uses-split"

.field private static final blacklist sPool:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/Pools$SimplePool<",
            "Landroid/content/res/Element;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mChildTagMask:J

.field blacklist mTag:Ljava/lang/String;

.field private final blacklist mTagCounters:[Landroid/content/res/TagCounter;

.field private blacklist mTotalComponentMetadataSize:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/res/Element$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/content/res/Element$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Landroid/content/res/Element;->sPool:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x23

    new-array v0, v0, [Landroid/content/res/TagCounter;

    iput-object v0, p0, Landroid/content/res/Element;->mTagCounters:[Landroid/content/res/TagCounter;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/res/Element;->mChildTagMask:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Element;->mTotalComponentMetadataSize:I

    return-void
.end method

.method private static blacklist getActionResStrMaxLen(I)I
    .locals 0

    if-eqz p0, :cond_0

    const p0, 0x8000

    return p0

    :cond_0
    const/16 p0, 0x400

    return p0
.end method

.method private static blacklist getActivityAliasResStrMaxLen(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const p0, 0x8000

    return p0

    :cond_0
    const/16 p0, 0x400

    return p0
.end method

.method private static blacklist getActivityResStrMaxLen(I)I
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_0

    const p0, 0x8000

    return p0

    :cond_0
    const/16 p0, 0x400

    return p0
.end method

.method private static blacklist getApplicationResStrMaxLen(I)I
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const/16 v0, 0x34

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1d

    if-eq p0, v0, :cond_0

    const p0, 0x8000

    return p0

    :cond_0
    const/16 p0, 0x400

    return p0
.end method

.method private static blacklist getAttrStrMaxLen(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v0, "zygotePreloadName"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x2a

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v0, "targetPackage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x29

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v0, "pathPattern"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x28

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v0, "pathAdvancedPattern"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x27

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "backupAgent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x26

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v0, "targetProcesses"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x25

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v0, "targetActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x24

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v0, "pathSuffix"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x23

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v0, "pathPrefix"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x22

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v0, "requiredSystemPropertyValue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x21

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v0, "versionName"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x20

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v0, "manageSpaceActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x1f

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v0, "queryPattern"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x1e

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v0, "targetName"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x1d

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v0, "readPermission"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x1c

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "fragmentAdvancedPattern"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v0, "requiredSystemPropertyName"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v0, "query"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "category"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v0, "parentActivityName"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v0, "port"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v0, "path"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "host"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v0, "requiredAccountType"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_19
    const-string/jumbo v0, "queryAdvancedPattern"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_1a
    const-string/jumbo v0, "mimeGroup"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_1b
    const-string/jumbo v0, "process"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_1c
    const-string/jumbo v0, "permission"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_1d
    const-string/jumbo v0, "package"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_1e
    const-string/jumbo v0, "scheme"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_1f
    const-string/jumbo v0, "sharedUserId"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_20
    const-string/jumbo v0, "taskAffinity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_21
    const-string/jumbo v0, "writePermission"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "fragmentSuffix"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_23
    const-string/jumbo v0, "querySuffix"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto :goto_0

    :cond_23
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_24
    const-string v0, "fragmentPrefix"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto :goto_0

    :cond_24
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_25
    const-string/jumbo v0, "queryPrefix"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto :goto_0

    :cond_25
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_26
    const-string/jumbo v0, "restrictedAccountType"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto :goto_0

    :cond_26
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_27
    const-string/jumbo v0, "mimeType"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto :goto_0

    :cond_27
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_28
    const-string/jumbo v0, "permissionGroup"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    goto :goto_0

    :cond_28
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_29
    const-string v0, "fragment"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    goto :goto_0

    :cond_29
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2a
    const-string v0, "fragmentPattern"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a

    goto :goto_0

    :cond_2a
    const/4 v1, 0x0

    :goto_0
    const/16 p0, 0x100

    packed-switch v1, :pswitch_data_0

    const p0, 0x8000

    return p0

    :pswitch_0
    const/16 p0, 0x5b

    :pswitch_1
    return p0

    :pswitch_2
    const/16 p0, 0x400

    return p0

    :pswitch_3
    const/16 p0, 0xff

    :pswitch_4
    return p0

    :pswitch_5
    const/16 p0, 0xfa0

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x63d598e0 -> :sswitch_2a
        -0x625d1db0 -> :sswitch_29
        -0x61f97610 -> :sswitch_28
        -0x52fa1272 -> :sswitch_27
        -0x5071e854 -> :sswitch_26
        -0x506afe86 -> :sswitch_25
        -0x4ca27afe -> :sswitch_24
        -0x4b21b9c7 -> :sswitch_23
        -0x4759363f -> :sswitch_22
        -0x3fcf10f2 -> :sswitch_21
        -0x3b4f9233 -> :sswitch_20
        -0x3aa6d8f5 -> :sswitch_1f
        -0x361eca5b -> :sswitch_1e
        -0x301acbba -> :sswitch_1d
        -0x1eda3a31 -> :sswitch_1c
        -0x1272e191 -> :sswitch_1b
        -0xd029d55 -> :sswitch_1a
        -0xbccf8da -> :sswitch_19
        -0x809fe18 -> :sswitch_18
        0x30f5a8 -> :sswitch_17
        0x337a8b -> :sswitch_16
        0x346425 -> :sswitch_15
        0x349881 -> :sswitch_14
        0x23f7004 -> :sswitch_13
        0x302bcfe -> :sswitch_12
        0x66f18c8 -> :sswitch_11
        0x9a3afce -> :sswitch_10
        0xd51fc9e -> :sswitch_f
        0x1a127805 -> :sswitch_e
        0x1cfe2fbc -> :sswitch_d
        0x26e279a8 -> :sswitch_c
        0x274520d0 -> :sswitch_b
        0x290fdf83 -> :sswitch_a
        0x2b43048e -> :sswitch_9
        0x2c999317 -> :sswitch_8
        0x31e2d7d6 -> :sswitch_7
        0x3e66a7c0 -> :sswitch_6
        0x40fb2ccc -> :sswitch_5
        0x41112663 -> :sswitch_4
        0x45cbf629 -> :sswitch_3
        0x4a701bab -> :sswitch_2
        0x5938a575 -> :sswitch_1
        0x7ef7dffc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static blacklist getCategoryResStrMaxLen(I)I
    .locals 0

    if-eqz p0, :cond_0

    const p0, 0x8000

    return p0

    :cond_0
    const/16 p0, 0x400

    return p0
.end method

.method private static blacklist getCounterIdx(Ljava/lang/String;)I
    .locals 25

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x15

    const/16 v3, 0x14

    const/16 v4, 0x13

    const/16 v5, 0x12

    const/16 v6, 0x11

    const/16 v7, 0x10

    const/16 v8, 0xf

    const/16 v9, 0xe

    const/16 v10, 0xd

    const/16 v11, 0xc

    const/16 v12, 0xb

    const/16 v13, 0xa

    const/16 v14, 0x9

    const/16 v15, 0x8

    const/16 v16, 0x7

    const/16 v17, 0x6

    const/16 v18, 0x5

    const/16 v19, 0x4

    const/16 v20, 0x3

    const/16 v21, 0x2

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v1, "service"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v24, 0x23

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "compatible-screens"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v24, 0x22

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v1, "uses-feature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v24, 0x21

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v1, "uses-permission-sdk-m"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v24, 0x20

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "application"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v24, 0x1f

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v1, "uses-permission-sdk-23"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v24, 0x1e

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v1, "supports-gl-texture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v24, 0x1d

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v1, "supports-screens"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v24, 0x1c

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "activity-alias"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v24, 0x1b

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v1, "queries"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v24, 0x1a

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v1, "path-permission"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v24, 0x19

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v1, "uses-permission"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v24, 0x18

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "instrumentation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v24, 0x17

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v1, "profileable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v24, 0x16

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "category"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    move/from16 v24, v2

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    move/from16 v24, v3

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v1, "permission-group"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    move/from16 v24, v4

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v1, "uses-sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    move/from16 v24, v5

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "attribution"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    move/from16 v24, v6

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v1, "permission"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    move/from16 v24, v7

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    move/from16 v24, v8

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v1, "receiver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    move/from16 v24, v9

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v1, "provider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    move/from16 v24, v10

    goto/16 :goto_0

    :sswitch_17
    const-string v1, "intent-filter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    :cond_17
    move/from16 v24, v11

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v1, "overlay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_0

    :cond_18
    move/from16 v24, v12

    goto/16 :goto_0

    :sswitch_19
    const-string v1, "layout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_0

    :cond_19
    move/from16 v24, v13

    goto/16 :goto_0

    :sswitch_1a
    const-string/jumbo v1, "meta-data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    move/from16 v24, v14

    goto/16 :goto_0

    :sswitch_1b
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    move/from16 v24, v15

    goto/16 :goto_0

    :sswitch_1c
    const-string/jumbo v1, "uri-relative-filter-group"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    move/from16 v24, v16

    goto :goto_0

    :sswitch_1d
    const-string/jumbo v1, "uses-library"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_0

    :cond_1d
    move/from16 v24, v17

    goto :goto_0

    :sswitch_1e
    const-string v1, "action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_0

    :cond_1e
    move/from16 v24, v18

    goto :goto_0

    :sswitch_1f
    const-string/jumbo v1, "uses-native-library"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_0

    :cond_1f
    move/from16 v24, v19

    goto :goto_0

    :sswitch_20
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_0

    :cond_20
    move/from16 v24, v20

    goto :goto_0

    :sswitch_21
    const-string/jumbo v1, "permission-tree"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_0

    :cond_21
    move/from16 v24, v21

    goto :goto_0

    :sswitch_22
    const-string/jumbo v1, "uses-configuration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_0

    :cond_22
    move/from16 v24, v22

    goto :goto_0

    :sswitch_23
    const-string v1, "grant-uri-permission"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_0

    :cond_23
    move/from16 v24, v23

    :goto_0
    packed-switch v24, :pswitch_data_0

    const/16 v0, 0x22

    return v0

    :pswitch_0
    return v17

    :pswitch_1
    const/16 v0, 0x17

    return v0

    :pswitch_2
    const/16 v0, 0x1a

    return v0

    :pswitch_3
    return v9

    :pswitch_4
    return v4

    :pswitch_5
    return v3

    :pswitch_6
    return v16

    :pswitch_7
    const/16 v0, 0x18

    return v0

    :pswitch_8
    const/16 v0, 0x1e

    return v0

    :pswitch_9
    const/16 v0, 0x1c

    return v0

    :pswitch_a
    return v7

    :pswitch_b
    return v20

    :pswitch_c
    return v11

    :pswitch_d
    return v10

    :pswitch_e
    return v6

    :pswitch_f
    const/16 v0, 0x16

    return v0

    :pswitch_10
    const/16 v0, 0x19

    return v0

    :pswitch_11
    const/16 v0, 0x1b

    return v0

    :pswitch_12
    const/16 v0, 0x1f

    return v0

    :pswitch_13
    return v18

    :pswitch_14
    return v14

    :pswitch_15
    return v21

    :pswitch_16
    return v8

    :pswitch_17
    return v23

    :pswitch_18
    return v22

    :pswitch_19
    const/16 v0, 0x20

    return v0

    :pswitch_1a
    const/16 v0, 0x21

    return v0

    :pswitch_1b
    return v15

    :pswitch_1c
    return v12

    :pswitch_1d
    return v19

    :pswitch_1e
    return v13

    :pswitch_1f
    return v5

    :pswitch_20
    return v2

    :pswitch_21
    const/16 v0, 0x1d

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6c28de5f -> :sswitch_23
        -0x69b7c34b -> :sswitch_22
        -0x6366e724 -> :sswitch_21
        -0x62b40cf1 -> :sswitch_20
        -0x5fe67eda -> :sswitch_1f
        -0x54d081ca -> :sswitch_1e
        -0x50de9846 -> :sswitch_1d
        -0x472f1456 -> :sswitch_1c
        -0x468ec964 -> :sswitch_1b
        -0x4284098e -> :sswitch_1a
        -0x422504d6 -> :sswitch_19
        -0x410bbbb0 -> :sswitch_18
        -0x3d616837 -> :sswitch_17
        -0x3adbfa0f -> :sswitch_16
        -0x30341611 -> :sswitch_15
        -0x301acbba -> :sswitch_14
        -0x1eda3a31 -> :sswitch_13
        -0x12786f81 -> :sswitch_12
        -0xfe5a947 -> :sswitch_11
        -0xa2d06ff -> :sswitch_10
        0x2eefaa -> :sswitch_f
        0x302bcfe -> :sswitch_e
        0xa9d2283 -> :sswitch_d
        0x20752f6e -> :sswitch_c
        0x23c12e70 -> :sswitch_b
        0x25eb3477 -> :sswitch_a
        0x270bd766 -> :sswitch_9
        0x2f1ad612 -> :sswitch_8
        0x3573e73e -> :sswitch_7
        0x381d071c -> :sswitch_6
        0x501aeeb1 -> :sswitch_5
        0x5ca40550 -> :sswitch_4
        0x65ae49fd -> :sswitch_3
        0x6adbbdf5 -> :sswitch_2
        0x6c5ff78e -> :sswitch_1
        0x7643c6b5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_9
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist getDataResStrMaxLen(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const p0, 0x8000

    return p0

    :pswitch_1
    const/16 p0, 0x400

    return p0

    :pswitch_2
    const/16 p0, 0xfa0

    return p0

    :pswitch_3
    const/16 p0, 0x100

    return p0

    :pswitch_4
    const/16 p0, 0xff

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static blacklist getGrantUriPermissionResStrMaxLen(I)I
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const p0, 0x8000

    return p0

    :cond_0
    const/16 p0, 0xfa0

    return p0
.end method

.method private static blacklist getInstrumentationResStrMaxLen(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const p0, 0x8000

    return p0

    :cond_0
    const/16 p0, 0x100

    return p0

    :cond_1
    const/16 p0, 0x400

    return p0
.end method

.method private static blacklist getManifestResStrMaxLen(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const p0, 0x8000

    return p0

    :cond_0
    const/16 p0, 0x400

    return p0

    :cond_1
    const/16 p0, 0x100

    return p0
.end method

.method private static blacklist getMetaDataResStrMaxLen(I)I
    .locals 0

    if-eqz p0, :cond_0

    const p0, 0x8000

    return p0

    :cond_0
    const/16 p0, 0x400

    return p0
.end method

.method private static blacklist getOverlayResStrMaxLen(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const p0, 0x8000

    return p0

    :cond_0
    const/16 p0, 0x5b

    return p0

    :cond_1
    const/16 p0, 0x400

    return p0

    :cond_2
    const/16 p0, 0x100

    return p0
.end method

.method private static blacklist getPathPermissionResStrMaxLen(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const p0, 0x8000

    return p0

    :cond_0
    const/16 p0, 0xfa0

    return p0

    :cond_1
    const/16 p0, 0x400

    return p0
.end method

.method private static blacklist getPermissionGroupResStrMaxLen(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const p0, 0x8000

    return p0

    :cond_0
    const/16 p0, 0x400

    return p0
.end method

.method private static blacklist getPermissionResStrMaxLen(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const p0, 0x8000

    return p0

    :cond_0
    const/16 p0, 0x100

    return p0

    :cond_1
    const/16 p0, 0x400

    return p0
.end method

.method private static blacklist getPermissionTreeResStrMaxLen(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const p0, 0x8000

    return p0

    :cond_0
    const/16 p0, 0x400

    return p0
.end method

.method private static blacklist getPropertyResStrMaxLen(I)I
    .locals 0

    if-eqz p0, :cond_0

    const p0, 0x8000

    return p0

    :cond_0
    const/16 p0, 0x400

    return p0
.end method

.method private static blacklist getProviderResStrMaxLen(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const p0, 0x8000

    return p0

    :cond_0
    const/16 p0, 0x400

    return p0
.end method

.method private static blacklist getReceiverResStrMaxLen(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const p0, 0x8000

    return p0

    :cond_0
    const/16 p0, 0x400

    return p0
.end method

.method private blacklist getResStrMaxLen(I)I
    .locals 2

    iget-object p0, p0, Landroid/content/res/Element;->mTag:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v0, "service"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v0, "uses-feature"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v0, "uses-permission-sdk-m"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "application"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v0, "uses-permission-sdk-23"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "activity-alias"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v0, "path-permission"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v0, "uses-permission"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "instrumentation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v0, "manifest"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "category"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v0, "permission-group"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v0, "permission"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v0, "receiver"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v0, "provider"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v0, "property"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v0, "overlay"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_0

    :cond_11
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_12
    const-string/jumbo v0, "meta-data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_0

    :cond_12
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_13
    const-string/jumbo v0, "uses-library"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_0

    :cond_13
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_14
    const-string v0, "action"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto :goto_0

    :cond_14
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_15
    const-string/jumbo v0, "uses-native-library"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_0

    :cond_15
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_16
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_0

    :cond_16
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_17
    const-string/jumbo v0, "permission-tree"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_0

    :cond_17
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_18
    const-string v0, "grant-uri-permission"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_0

    :cond_18
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const p0, 0x8000

    return p0

    :pswitch_0
    invoke-static {p1}, Landroid/content/res/Element;->getServiceResStrMaxLen(I)I

    move-result p0

    return p0

    :pswitch_1
    invoke-static {p1}, Landroid/content/res/Element;->getUsesFeatureResStrMaxLen(I)I

    move-result p0

    return p0

    :pswitch_2
    invoke-static {p1}, Landroid/content/res/Element;->getApplicationResStrMaxLen(I)I

    move-result p0

    return p0

    :pswitch_3
    invoke-static {p1}, Landroid/content/res/Element;->getActivityAliasResStrMaxLen(I)I

    move-result p0

    return p0

    :pswitch_4
    invoke-static {p1}, Landroid/content/res/Element;->getPathPermissionResStrMaxLen(I)I

    move-result p0

    return p0

    :pswitch_5
    invoke-static {p1}, Landroid/content/res/Element;->getUsesPermissionResStrMaxLen(I)I

    move-result p0

    return p0

    :pswitch_6
    invoke-static {p1}, Landroid/content/res/Element;->getInstrumentationResStrMaxLen(I)I

    move-result p0

    return p0

    :pswitch_7
    invoke-static {p1}, Landroid/content/res/Element;->getManifestResStrMaxLen(I)I

    move-result p0

    return p0

    :pswitch_8
    invoke-static {p1}, Landroid/content/res/Element;->getCategoryResStrMaxLen(I)I

    move-result p0

    return p0

    :pswitch_9
    invoke-static {p1}, Landroid/content/res/Element;->getDataResStrMaxLen(I)I

    move-result p0

    return p0

    :pswitch_a
    invoke-static {p1}, Landroid/content/res/Element;->getPermissionGroupResStrMaxLen(I)I

    move-result p0

    return p0

    :pswitch_b
    invoke-static {p1}, Landroid/content/res/Element;->getPermissionResStrMaxLen(I)I

    move-result p0

    return p0

    :pswitch_c
    invoke-static {p1}, Landroid/content/res/Element;->getReceiverResStrMaxLen(I)I

    move-result p0

    return p0

    :pswitch_d
    invoke-static {p1}, Landroid/content/res/Element;->getProviderResStrMaxLen(I)I

    move-result p0

    return p0

    :pswitch_e
    invoke-static {p1}, Landroid/content/res/Element;->getPropertyResStrMaxLen(I)I

    move-result p0

    return p0

    :pswitch_f
    invoke-static {p1}, Landroid/content/res/Element;->getOverlayResStrMaxLen(I)I

    move-result p0

    return p0

    :pswitch_10
    invoke-static {p1}, Landroid/content/res/Element;->getMetaDataResStrMaxLen(I)I

    move-result p0

    return p0

    :pswitch_11
    invoke-static {p1}, Landroid/content/res/Element;->getUsesLibraryResStrMaxLen(I)I

    move-result p0

    return p0

    :pswitch_12
    invoke-static {p1}, Landroid/content/res/Element;->getActionResStrMaxLen(I)I

    move-result p0

    return p0

    :pswitch_13
    invoke-static {p1}, Landroid/content/res/Element;->getUsesNativeLibraryResStrMaxLen(I)I

    move-result p0

    return p0

    :pswitch_14
    invoke-static {p1}, Landroid/content/res/Element;->getActivityResStrMaxLen(I)I

    move-result p0

    return p0

    :pswitch_15
    invoke-static {p1}, Landroid/content/res/Element;->getPermissionTreeResStrMaxLen(I)I

    move-result p0

    return p0

    :pswitch_16
    invoke-static {p1}, Landroid/content/res/Element;->getGrantUriPermissionResStrMaxLen(I)I

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6c28de5f -> :sswitch_18
        -0x6366e724 -> :sswitch_17
        -0x62b40cf1 -> :sswitch_16
        -0x5fe67eda -> :sswitch_15
        -0x54d081ca -> :sswitch_14
        -0x50de9846 -> :sswitch_13
        -0x4284098e -> :sswitch_12
        -0x410bbbb0 -> :sswitch_11
        -0x3b32222b -> :sswitch_10
        -0x3adbfa0f -> :sswitch_f
        -0x30341611 -> :sswitch_e
        -0x1eda3a31 -> :sswitch_d
        -0xa2d06ff -> :sswitch_c
        0x2eefaa -> :sswitch_b
        0x302bcfe -> :sswitch_a
        0x7c92e2f -> :sswitch_9
        0x20752f6e -> :sswitch_8
        0x23c12e70 -> :sswitch_7
        0x25eb3477 -> :sswitch_6
        0x2f1ad612 -> :sswitch_5
        0x501aeeb1 -> :sswitch_4
        0x5ca40550 -> :sswitch_3
        0x65ae49fd -> :sswitch_2
        0x6adbbdf5 -> :sswitch_1
        0x7643c6b5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist getServiceResStrMaxLen(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const p0, 0x8000

    return p0

    :cond_0
    const/16 p0, 0x400

    return p0
.end method

.method private static blacklist getUsesFeatureResStrMaxLen(I)I
    .locals 0

    if-eqz p0, :cond_0

    const p0, 0x8000

    return p0

    :cond_0
    const/16 p0, 0x400

    return p0
.end method

.method private static blacklist getUsesLibraryResStrMaxLen(I)I
    .locals 0

    if-eqz p0, :cond_0

    const p0, 0x8000

    return p0

    :cond_0
    const/16 p0, 0x400

    return p0
.end method

.method private static blacklist getUsesNativeLibraryResStrMaxLen(I)I
    .locals 0

    if-eqz p0, :cond_0

    const p0, 0x8000

    return p0

    :cond_0
    const/16 p0, 0x400

    return p0
.end method

.method private static blacklist getUsesPermissionResStrMaxLen(I)I
    .locals 0

    if-eqz p0, :cond_0

    const p0, 0x8000

    return p0

    :cond_0
    const/16 p0, 0x400

    return p0
.end method

.method private blacklist init(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/content/res/Element;->mTag:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/content/res/Element;->mChildTagMask:J

    const/4 v2, 0x0

    iput v2, v0, Landroid/content/res/Element;->mTotalComponentMetadataSize:I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string/jumbo v4, "service"

    const-string v5, "compatible-screens"

    const-string v6, "application"

    const-string v7, "activity-alias"

    const-string/jumbo v8, "queries"

    const-string/jumbo v9, "receiver"

    const-string v10, "intent"

    const-string/jumbo v11, "uri-relative-filter-group"

    const-string v12, "activity"

    const-string/jumbo v13, "provider"

    const-string v14, "intent-filter"

    const/4 v15, -0x1

    sparse-switch v3, :sswitch_data_0

    :goto_0
    move v2, v15

    goto/16 :goto_1

    :sswitch_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_2
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_3
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v2, 0x8

    goto :goto_1

    :sswitch_4
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x7

    goto :goto_1

    :sswitch_5
    const-string/jumbo v2, "manifest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x6

    goto :goto_1

    :sswitch_6
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_7
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_8
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_9
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_a
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_b
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_0

    :cond_b
    :goto_1
    const-string v1, "data"

    const-string/jumbo v3, "meta-data"

    const/16 v15, 0x64

    packed-switch v2, :pswitch_data_0

    return-void

    :pswitch_0
    const-string/jumbo v1, "screen"

    const/16 v2, 0xfa0

    invoke-direct {v0, v1, v2}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    return-void

    :pswitch_1
    const-string/jumbo v1, "profileable"

    invoke-direct {v0, v1, v15}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    const-string/jumbo v1, "uses-native-library"

    const/16 v2, 0x12c

    invoke-direct {v0, v1, v2}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    const/16 v1, 0x3e8

    invoke-direct {v0, v9, v1}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    invoke-direct {v0, v4, v1}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    invoke-direct {v0, v3, v1}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    const-string/jumbo v2, "uses-library"

    invoke-direct {v0, v2, v1}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    const/16 v2, 0xfa0

    invoke-direct {v0, v7, v2}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    const/16 v2, 0x1f40

    invoke-direct {v0, v13, v2}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    const/16 v1, 0x7530

    invoke-direct {v0, v12, v1}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    return-void

    :pswitch_2
    const/16 v1, 0x3e8

    const/16 v2, 0x1f40

    const-string/jumbo v3, "package"

    invoke-direct {v0, v3, v1}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    const/16 v1, 0x7d0

    invoke-direct {v0, v10, v1}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    invoke-direct {v0, v13, v2}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    return-void

    :pswitch_3
    invoke-direct {v0, v6, v15}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    const-string/jumbo v1, "overlay"

    invoke-direct {v0, v1, v15}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    const-string v1, "instrumentation"

    invoke-direct {v0, v1, v15}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    const-string/jumbo v1, "permission-group"

    invoke-direct {v0, v1, v15}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    const-string/jumbo v1, "permission-tree"

    invoke-direct {v0, v1, v15}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    const-string/jumbo v1, "supports-gl-texture"

    invoke-direct {v0, v1, v15}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    const-string/jumbo v1, "supports-screens"

    invoke-direct {v0, v1, v15}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    const-string/jumbo v1, "uses-configuration"

    invoke-direct {v0, v1, v15}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    const-string/jumbo v1, "uses-sdk"

    invoke-direct {v0, v1, v15}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    const/16 v1, 0xc8

    invoke-direct {v0, v5, v1}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    invoke-direct {v0, v8, v1}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    const-string v1, "attribution"

    const/16 v2, 0x190

    invoke-direct {v0, v1, v2}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    const-string/jumbo v1, "uses-feature"

    invoke-direct {v0, v1, v2}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    const-string/jumbo v1, "permission"

    const/16 v2, 0x7d0

    invoke-direct {v0, v1, v2}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    const-string/jumbo v1, "uses-permission"

    const/16 v2, 0x4e20

    invoke-direct {v0, v1, v2}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    return-void

    :pswitch_4
    const/16 v1, 0x3e8

    const/16 v2, 0x4e20

    invoke-direct {v0, v3, v1}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    invoke-direct {v0, v14, v2}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    return-void

    :pswitch_5
    const/16 v1, 0x3e8

    const/16 v2, 0x4e20

    const-string v4, "grant-uri-permission"

    invoke-direct {v0, v4, v15}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    const-string/jumbo v4, "path-permission"

    invoke-direct {v0, v4, v15}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    invoke-direct {v0, v3, v1}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    invoke-direct {v0, v14, v2}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    return-void

    :pswitch_6
    const/16 v2, 0x4e20

    invoke-direct {v0, v11, v15}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    const-string v3, "action"

    invoke-direct {v0, v3, v2}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    const-string v2, "category"

    const v3, 0x9c40

    invoke-direct {v0, v2, v3}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v3}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    return-void

    :pswitch_7
    invoke-direct {v0, v1, v15}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    return-void

    :pswitch_8
    const/16 v2, 0x4e20

    const-string v1, "layout"

    const/16 v4, 0x3e8

    invoke-direct {v0, v1, v4}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    invoke-direct {v0, v3, v4}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    invoke-direct {v0, v14, v2}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x62b40cf1 -> :sswitch_b
        -0x472f1456 -> :sswitch_a
        -0x468ec964 -> :sswitch_9
        -0x3d616837 -> :sswitch_8
        -0x3adbfa0f -> :sswitch_7
        -0x30341611 -> :sswitch_6
        0x7c92e2f -> :sswitch_5
        0x270bd766 -> :sswitch_4
        0x2f1ad612 -> :sswitch_3
        0x5ca40550 -> :sswitch_2
        0x6c5ff78e -> :sswitch_1
        0x7643c6b5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private blacklist initializeCounter(Ljava/lang/String;I)V
    .locals 2

    invoke-static {p1}, Landroid/content/res/Element;->getCounterIdx(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Landroid/content/res/Element;->mTagCounters:[Landroid/content/res/TagCounter;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/res/TagCounter;

    invoke-direct {v1}, Landroid/content/res/TagCounter;-><init>()V

    aput-object v1, v0, p1

    :cond_0
    iget-object v0, p0, Landroid/content/res/Element;->mTagCounters:[Landroid/content/res/TagCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/content/res/TagCounter;->reset(I)V

    iget-wide v0, p0, Landroid/content/res/Element;->mChildTagMask:J

    const/4 p2, 0x1

    shl-int p1, p2, p1

    int-to-long p1, p1

    or-long/2addr p1, v0

    iput-wide p1, p0, Landroid/content/res/Element;->mChildTagMask:J

    return-void
.end method

.method private blacklist isComponentNameAttr(I)Z
    .locals 6

    iget-object p0, p0, Landroid/content/res/Element;->mTag:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "service"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_1
    const-string v0, "application"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_2
    const-string v0, "activity-alias"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_3
    const-string v0, "instrumentation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v5, v1

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "receiver"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v5, v2

    goto :goto_0

    :sswitch_5
    const-string/jumbo v0, "provider"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    move v5, v3

    goto :goto_0

    :sswitch_6
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    move v5, v4

    :goto_0
    packed-switch v5, :pswitch_data_0

    return v4

    :pswitch_0
    if-ne p1, v2, :cond_7

    return v3

    :cond_7
    return v4

    :pswitch_1
    const/16 p0, 0x10

    if-eq p1, p0, :cond_9

    if-eq p1, v1, :cond_9

    const/16 p0, 0x34

    if-ne p1, p0, :cond_8

    goto :goto_1

    :cond_8
    return v4

    :cond_9
    :goto_1
    return v3

    :pswitch_2
    const/4 p0, 0x7

    if-ne p1, p0, :cond_a

    return v3

    :cond_a
    return v4

    :pswitch_3
    if-ne p1, v2, :cond_b

    return v3

    :cond_b
    return v4

    :pswitch_4
    if-ne p1, v2, :cond_c

    return v3

    :cond_c
    return v4

    :pswitch_5
    if-ne p1, v2, :cond_d

    return v3

    :cond_d
    return v4

    :pswitch_6
    if-eq p1, v1, :cond_f

    const/16 p0, 0x1b

    if-ne p1, p0, :cond_e

    goto :goto_2

    :cond_e
    return v4

    :cond_f
    :goto_2
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x62b40cf1 -> :sswitch_6
        -0x3adbfa0f -> :sswitch_5
        -0x30341611 -> :sswitch_4
        0x20752f6e -> :sswitch_3
        0x2f1ad612 -> :sswitch_2
        0x5ca40550 -> :sswitch_1
        0x7643c6b5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist isComponentNameAttr(Ljava/lang/String;)Z
    .locals 5

    iget-object p0, p0, Landroid/content/res/Element;->mTag:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move p0, v4

    goto :goto_1

    :sswitch_0
    const-string/jumbo v0, "service"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x6

    goto :goto_1

    :sswitch_1
    const-string v0, "application"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "activity-alias"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "instrumentation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "receiver"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move p0, v1

    goto :goto_1

    :sswitch_5
    const-string/jumbo v0, "provider"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    move p0, v2

    goto :goto_1

    :sswitch_6
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    move p0, v3

    :goto_1
    const-string/jumbo v0, "name"

    packed-switch p0, :pswitch_data_0

    return v3

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_1

    :goto_2
    move v1, v4

    goto :goto_3

    :sswitch_7
    const-string/jumbo p0, "zygotePreloadName"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_2

    :sswitch_8
    const-string p0, "backupAgent"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_3

    :sswitch_9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_2

    :cond_8
    move v1, v3

    :cond_9
    :goto_3
    packed-switch v1, :pswitch_data_1

    return v3

    :pswitch_1
    return v2

    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string/jumbo p0, "targetActivity"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v3

    :cond_a
    return v2

    :pswitch_3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v3

    :cond_b
    return v2

    :pswitch_4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    const-string/jumbo p0, "parentActivityName"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    return v3

    :cond_c
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x62b40cf1 -> :sswitch_6
        -0x3adbfa0f -> :sswitch_5
        -0x30341611 -> :sswitch_4
        0x20752f6e -> :sswitch_3
        0x2f1ad612 -> :sswitch_2
        0x5ca40550 -> :sswitch_1
        0x7643c6b5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x337a8b -> :sswitch_9
        0x41112663 -> :sswitch_8
        0x7ef7dffc -> :sswitch_7
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic blacklist lambda$static$0()Landroid/util/Pools$SimplePool;
    .locals 2

    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    return-object v0
.end method

.method static blacklist obtain(Ljava/lang/String;)Landroid/content/res/Element;
    .locals 1

    sget-object v0, Landroid/content/res/Element;->sPool:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pools$SimplePool;

    invoke-virtual {v0}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Element;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/res/Element;

    invoke-direct {v0}, Landroid/content/res/Element;-><init>()V

    :cond_0
    invoke-direct {v0, p0}, Landroid/content/res/Element;->init(Ljava/lang/String;)V

    return-object v0
.end method

.method static blacklist shouldValidate(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v0, "service"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x26

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "compatible-screens"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x25

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v0, "uses-feature"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x24

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v0, "uses-permission-sdk-m"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x23

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "application"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x22

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v0, "uses-permission-sdk-23"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x21

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v0, "supports-gl-texture"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x20

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v0, "supports-screens"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x1f

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "activity-alias"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x1e

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v0, "queries"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x1d

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v0, "path-permission"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x1c

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v0, "uses-permission"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x1b

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "instrumentation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0x1a

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v0, "profileable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x19

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v0, "manifest"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0x18

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "category"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0x17

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v0, "permission-group"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v0, "uses-sdk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "attribution"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v0, "permission"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v0, "package"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v0, "receiver"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v0, "screen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v0, "provider"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_19
    const-string/jumbo v0, "property"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "intent-filter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_1b
    const-string/jumbo v0, "overlay"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "layout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_1d
    const-string/jumbo v0, "meta-data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "intent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_1f
    const-string/jumbo v0, "uri-relative-filter-group"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto :goto_0

    :cond_1f
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_20
    const-string/jumbo v0, "uses-library"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto :goto_0

    :cond_20
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_21
    const-string v0, "action"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto :goto_0

    :cond_21
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_22
    const-string/jumbo v0, "uses-native-library"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto :goto_0

    :cond_22
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_23
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto :goto_0

    :cond_23
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_24
    const-string/jumbo v0, "permission-tree"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto :goto_0

    :cond_24
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_25
    const-string/jumbo v0, "uses-configuration"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto :goto_0

    :cond_25
    move v3, v1

    goto :goto_0

    :sswitch_26
    const-string v0, "grant-uri-permission"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto :goto_0

    :cond_26
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    return v2

    :pswitch_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6c28de5f -> :sswitch_26
        -0x69b7c34b -> :sswitch_25
        -0x6366e724 -> :sswitch_24
        -0x62b40cf1 -> :sswitch_23
        -0x5fe67eda -> :sswitch_22
        -0x54d081ca -> :sswitch_21
        -0x50de9846 -> :sswitch_20
        -0x472f1456 -> :sswitch_1f
        -0x468ec964 -> :sswitch_1e
        -0x4284098e -> :sswitch_1d
        -0x422504d6 -> :sswitch_1c
        -0x410bbbb0 -> :sswitch_1b
        -0x3d616837 -> :sswitch_1a
        -0x3b32222b -> :sswitch_19
        -0x3adbfa0f -> :sswitch_18
        -0x361a3f94 -> :sswitch_17
        -0x30341611 -> :sswitch_16
        -0x301acbba -> :sswitch_15
        -0x1eda3a31 -> :sswitch_14
        -0x12786f81 -> :sswitch_13
        -0xfe5a947 -> :sswitch_12
        -0xa2d06ff -> :sswitch_11
        0x2eefaa -> :sswitch_10
        0x302bcfe -> :sswitch_f
        0x7c92e2f -> :sswitch_e
        0xa9d2283 -> :sswitch_d
        0x20752f6e -> :sswitch_c
        0x23c12e70 -> :sswitch_b
        0x25eb3477 -> :sswitch_a
        0x270bd766 -> :sswitch_9
        0x2f1ad612 -> :sswitch_8
        0x3573e73e -> :sswitch_7
        0x381d071c -> :sswitch_6
        0x501aeeb1 -> :sswitch_5
        0x5ca40550 -> :sswitch_4
        0x65ae49fd -> :sswitch_3
        0x6adbbdf5 -> :sswitch_2
        0x6c5ff78e -> :sswitch_1
        0x7643c6b5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method blacklist hasChild(Ljava/lang/String;)Z
    .locals 4

    iget-wide v0, p0, Landroid/content/res/Element;->mChildTagMask:J

    invoke-static {p1}, Landroid/content/res/Element;->getCounterIdx(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    shl-int p0, p1, p0

    int-to-long v2, p0

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method blacklist recycle()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Element;->mTag:Ljava/lang/String;

    sget-object v0, Landroid/content/res/Element;->sPool:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method blacklist seen(Landroid/content/res/Element;)V
    .locals 3

    iget-object v0, p0, Landroid/content/res/Element;->mTagCounters:[Landroid/content/res/TagCounter;

    iget-object v1, p1, Landroid/content/res/Element;->mTag:Ljava/lang/String;

    invoke-static {v1}, Landroid/content/res/Element;->getCounterIdx(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/TagCounter;->increment()V

    invoke-virtual {v0}, Landroid/content/res/TagCounter;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The number of child "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/res/Element;->mTag:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " elements exceeded the max allowed in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/content/res/Element;->mTag:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method blacklist validateComponentMetadata(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Landroid/content/res/Element;->mTotalComponentMetadataSize:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/content/res/Element;->mTotalComponentMetadataSize:I

    const/high16 p1, 0x40000

    if-gt v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Max total meta data size limit exceeded for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/content/res/Element;->mTag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method blacklist validateComponentName(Ljava/lang/CharSequence;)V
    .locals 2

    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p0, v0, :cond_1

    const-string v0, ";,[](){}:?%^*|/\\"

    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is not a valid Java class name"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PackageParsing"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method blacklist validateResStrAttr(ILjava/lang/CharSequence;)V
    .locals 2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-direct {p0, p1}, Landroid/content/res/Element;->getResStrMaxLen(I)I

    move-result v1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "String length limit exceeded for attribute in "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/content/res/Element;->mTag:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroid/content/res/Element;->isComponentNameAttr(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2}, Landroid/content/res/Element;->validateComponentName(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method blacklist validateStrAttr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1}, Landroid/content/res/Element;->getAttrStrMaxLen(Ljava/lang/String;)I

    move-result v1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "String length limit exceeded for attribute "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/content/res/Element;->mTag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroid/content/res/Element;->isComponentNameAttr(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2}, Landroid/content/res/Element;->validateComponentName(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
