.class public Lcom/samsung/android/app/SemDualAppManager;
.super Ljava/lang/Object;
.source "SemDualAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/SemDualAppManager$DualAppVersion;,
        Lcom/samsung/android/app/SemDualAppManager$SepVersionInt;
    }
.end annotation


# static fields
.field private static final blacklist ACTION3_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist ADW_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist AFW_CAPABLE_LAUNCHER_APPS:[Ljava/lang/String;

.field private static final blacklist BLACKBERRYMESSENGER_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist CHINA_SALES_CODES:[Ljava/lang/String;

.field public static final blacklist DA_PROFILE_ID_PROPERTY_NAME:Ljava/lang/String; = "sys.dualapp.profile_id"

.field private static final blacklist DCM_LIVEUX_PACKAGE_NAME:Ljava/lang/String;

.field static final blacklist DUAL_APP_WHITELIST_PACKAGES:[Ljava/lang/String;

.field static final blacklist DUAL_APP_WHITELIST_PACKAGES_FOR_CHINA:[Ljava/lang/String;

.field public static final blacklist DUAL_CALLER_PACKAGE_NAME:Ljava/lang/String; = "callerPackage"

.field public static final blacklist DUAL_ORI_SHORTCUT_COMPONENT:Ljava/lang/String; = "dual_shortcut_component"

.field private static final blacklist FACEBOOKMESSENGER_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist FACEBOOK_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist GOOGLE_QUICKSEARCHBOX_PACKGE_NAME:Ljava/lang/String;

.field private static final blacklist HIKE_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist HOLO_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist ICQ_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist KAKAOTALK_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist KAKAOTALK_SETTINGS_THEME_URI:Ljava/lang/String; = "kakaotalk://settings/theme/"

.field private static final blacklist KIK_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist LINE_PACKAGE_NAME:Ljava/lang/String;

.field public static final blacklist MAX_DUALAPP_ID:I = 0x63

.field private static final blacklist MICROSOFT_PACKAGE_NAME:Ljava/lang/String;

.field public static final blacklist MIN_DUALAPP_ID:I = 0x5f

.field private static final blacklist NOUGAT_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist NOVA_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist QQMOBILECHINA_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist QQMOBILEINTERNATIONAL_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist SAMSUNG_LAUNCHER_APPS:[Ljava/lang/String;

.field private static final blacklist SEC_DESKTOP_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

.field private static final blacklist SEC_EASY_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

.field private static final blacklist SEC_EMERGENCY_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

.field private static final blacklist SEC_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

.field private static final blacklist SEC_PRODUCT_FEATURE_KNOX_SUPPORT_DUAL_APP:Z = true

.field private static final blacklist SKYPE_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist SMART3_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist SNAPCHAT_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist TAG:Ljava/lang/String; = "SemDualAppManager"

.field private static final blacklist TELEGRAM_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist VIBER_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist WECHAT_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist WEIBO_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist WHATSAPP_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist YAHOOMESSENGER_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist YANDEX_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist ZALO_PACKAGE_NAME:Ljava/lang/String;

.field private static blacklist mIsChinaModel:Z

.field private static blacklist mSalesCode:Ljava/lang/String;

.field private static blacklist mService:Lcom/samsung/android/app/ISemDualAppManager;

.field private static blacklist sDAInstance:Lcom/samsung/android/app/SemDualAppManager;


# instance fields
.field private blacklist mDuplicateInitialIntents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 40

    const-string v0, "Y29tLmZhY2Vib29rLmthdGFuYQ=="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/SemDualAppManager;->FACEBOOK_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLndoYXRzYXBw"

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/app/SemDualAppManager;->WHATSAPP_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLmZhY2Vib29rLm9yY2E="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/app/SemDualAppManager;->FACEBOOKMESSENGER_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLnRlbmNlbnQubW9iaWxlcXE="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/app/SemDualAppManager;->QQMOBILECHINA_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLnRlbmNlbnQubW9iaWxlcXFp"

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/samsung/android/app/SemDualAppManager;->QQMOBILEINTERNATIONAL_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLnRlbmNlbnQubW0="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/samsung/android/app/SemDualAppManager;->WECHAT_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLnNreXBlLnJhaWRlcg=="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/samsung/android/app/SemDualAppManager;->SKYPE_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLnZpYmVyLnZvaXA="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/samsung/android/app/SemDualAppManager;->VIBER_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "anAubmF2ZXIubGluZS5hbmRyb2lk"

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/samsung/android/app/SemDualAppManager;->LINE_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLmJibQ=="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/samsung/android/app/SemDualAppManager;->BLACKBERRYMESSENGER_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "b3JnLnRlbGVncmFtLm1lc3Nlbmdlcg=="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/samsung/android/app/SemDualAppManager;->TELEGRAM_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLmtha2FvLnRhbGs="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/samsung/android/app/SemDualAppManager;->KAKAOTALK_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLmJzYi5oaWtl"

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/samsung/android/app/SemDualAppManager;->HIKE_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLmljcS5tb2JpbGUuY2xpZW50"

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/samsung/android/app/SemDualAppManager;->ICQ_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLnlhaG9vLm1vYmlsZS5jbGllbnQuYW5kcm9pZC5pbQ=="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sput-object v16, Lcom/samsung/android/app/SemDualAppManager;->YAHOOMESSENGER_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLnppbmcuemFsbw=="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    sput-object v17, Lcom/samsung/android/app/SemDualAppManager;->ZALO_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLnNuYXBjaGF0LmFuZHJvaWQ="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    sput-object v18, Lcom/samsung/android/app/SemDualAppManager;->SNAPCHAT_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLnNpbmEud2VpYm8="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/samsung/android/app/SemDualAppManager;->WEIBO_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "a2lrLmFuZHJvaWQ="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    sput-object v19, Lcom/samsung/android/app/SemDualAppManager;->KIK_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLnNlYy5hbmRyb2lkLmFwcC5sYXVuY2hlcg=="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/samsung/android/app/SemDualAppManager;->SEC_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLnNlYy5hbmRyb2lkLmFwcC5lYXN5bGF1bmNoZXI="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/samsung/android/app/SemDualAppManager;->SEC_EASY_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLnNlYy5hbmRyb2lkLmVtZXJnZW5jeWxhdW5jaGVy"

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/samsung/android/app/SemDualAppManager;->SEC_EMERGENCY_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLnNlYy5hbmRyb2lkLmFwcC5kZXNrdG9wbGF1bmNoZXI="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    sput-object v23, Lcom/samsung/android/app/SemDualAppManager;->SEC_DESKTOP_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLmdvb2dsZS5hbmRyb2lkLmdvb2dsZXF1aWNrc2VhcmNoYm94"

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/samsung/android/app/SemDualAppManager;->GOOGLE_QUICKSEARCHBOX_PACKGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLnRlc2xhY29pbHN3LmxhdW5jaGVy"

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/samsung/android/app/SemDualAppManager;->NOVA_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLm1pY3Jvc29mdC5sYXVuY2hlcg=="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    sput-object v32, Lcom/samsung/android/app/SemDualAppManager;->MICROSOFT_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "b3JnLmFkdy5sYXVuY2hlcg=="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    sput-object v33, Lcom/samsung/android/app/SemDualAppManager;->ADW_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLmFjdGlvbmxhdW5jaGVyLnBsYXlzdG9yZQ=="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    sput-object v26, Lcom/samsung/android/app/SemDualAppManager;->ACTION3_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLm1vYmludC5ob2xvbGF1bmNoZXI="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    sput-object v27, Lcom/samsung/android/app/SemDualAppManager;->HOLO_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Z2lubGVtb24uZmxvd2VyZnJlZQ=="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sput-object v28, Lcom/samsung/android/app/SemDualAppManager;->SMART3_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLmNtbmxhdW5jaGVy"

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lcom/samsung/android/app/SemDualAppManager;->NOUGAT_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLnlhbmRleC5sYXVuY2hlcg=="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sput-object v30, Lcom/samsung/android/app/SemDualAppManager;->YANDEX_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLm50dGRvY29tby5hbmRyb2lkLmRob21l"

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    sput-object v31, Lcom/samsung/android/app/SemDualAppManager;->DCM_LIVEUX_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {}, Landroid/os/SemSystemProperties;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->mSalesCode:Ljava/lang/String;

    const-string v38, "CHU"

    const-string v39, "CHC"

    const-string v34, "CHN"

    const-string v35, "CHM"

    const-string v36, "CBK"

    const-string v37, "CTC"

    filled-new-array/range {v34 .. v39}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->CHINA_SALES_CODES:[Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->isChinaModel()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/SemDualAppManager;->mIsChinaModel:Z

    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->DUAL_APP_WHITELIST_PACKAGES:[Ljava/lang/String;

    filled-new-array {v6, v4, v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->DUAL_APP_WHITELIST_PACKAGES_FOR_CHINA:[Ljava/lang/String;

    filled-new-array/range {v20 .. v33}, [Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->AFW_CAPABLE_LAUNCHER_APPS:[Ljava/lang/String;

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->SAMSUNG_LAUNCHER_APPS:[Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/SemDualAppManager;->mDuplicateInitialIntents:Ljava/util/Map;

    return-void
.end method

.method private blacklist addResolveInfoFromOtherUser(Landroid/content/pm/PackageManager;Ljava/util/List;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result p0

    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    if-eqz p3, :cond_4

    invoke-static {p0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p3}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const-wide/16 v3, 0x0

    :try_start_0
    invoke-interface {v0, v1, v3, v4, p0}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object p3

    new-instance p0, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0}, Landroid/content/pm/ResolveInfo;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iput-object p3, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-object v2, p0

    :catch_1
    :cond_2
    instance-of p0, p4, Landroid/content/pm/LabeledIntent;

    if-eqz p0, :cond_3

    move-object p0, p4

    check-cast p0, Landroid/content/pm/LabeledIntent;

    invoke-virtual {p0}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v0

    iput v0, v2, Landroid/content/pm/ResolveInfo;->labelRes:I

    invoke-virtual {p0}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v2, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result p0

    iput p0, v2, Landroid/content/pm/ResolveInfo;->icon:I

    iget p0, v2, Landroid/content/pm/ResolveInfo;->icon:I

    iput p0, v2, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    :cond_3
    if-eqz p3, :cond_4

    new-instance v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v2, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p4

    move-object v1, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method private static blacklist decodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static blacklist drawDualAppBadge(Landroid/content/Context;Landroid/appwidget/AppWidgetHostView;Landroid/os/UserHandle;)V
    .locals 1

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/samsung/android/app/SemDualAppManager$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/SemDualAppManager$1;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHostView;)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static blacklist getAllInstalledWhitelistedPackages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppService()Lcom/samsung/android/app/ISemDualAppManager;

    move-result-object v0

    const-string v1, "SemDualAppManager"

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/app/ISemDualAppManager;->getAllInstalledWhitelistedPackages()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "getAllInstalledWhitelistedPackages : RemoteException occured"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "getAllInstalledWhitelistedPackages : Can not connect to DualAppManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist getAllWhitelistedPackages()[Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppService()Lcom/samsung/android/app/ISemDualAppManager;

    move-result-object v0

    const-string v1, "SemDualAppManager"

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/app/ISemDualAppManager;->getAllWhitelistedPackages()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "getAllWhitelistedPackages : RemoteException occured"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "getAllWhitelistedPackages : null returned. Return default"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/app/SemDualAppManager;->mIsChinaModel:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->DUAL_APP_WHITELIST_PACKAGES_FOR_CHINA:[Ljava/lang/String;

    return-object v0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->DUAL_APP_WHITELIST_PACKAGES:[Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method public static whitelist getDualAppProfileId()I
    .locals 2

    const-string/jumbo v0, "sys.dualapp.profile_id"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/16 v0, -0x2710

    return v0
.end method

.method private static blacklist getDualAppService()Lcom/samsung/android/app/ISemDualAppManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->mService:Lcom/samsung/android/app/ISemDualAppManager;

    if-nez v0, :cond_0

    const-string v0, "dual_app"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/ISemDualAppManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/ISemDualAppManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->mService:Lcom/samsung/android/app/ISemDualAppManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->mService:Lcom/samsung/android/app/ISemDualAppManager;

    return-object v0
.end method

.method public static blacklist getDualAppVersion()I
    .locals 1

    const/16 v0, 0x168

    return v0
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;
    .locals 1

    sget-object p0, Lcom/samsung/android/app/SemDualAppManager;->sDAInstance:Lcom/samsung/android/app/SemDualAppManager;

    if-nez p0, :cond_1

    const-class p0, Lcom/samsung/android/app/SemDualAppManager;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->sDAInstance:Lcom/samsung/android/app/SemDualAppManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/SemDualAppManager;

    invoke-direct {v0}, Lcom/samsung/android/app/SemDualAppManager;-><init>()V

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->sDAInstance:Lcom/samsung/android/app/SemDualAppManager;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/SemDualAppManager;->sDAInstance:Lcom/samsung/android/app/SemDualAppManager;

    return-object p0
.end method

.method public static blacklist isAfwSupportLauncher(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    sget-object v1, Lcom/samsung/android/app/SemDualAppManager;->AFW_CAPABLE_LAUNCHER_APPS:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static blacklist isChinaDualApp(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->QQMOBILECHINA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->QQMOBILEINTERNATIONAL_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->WEIBO_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->WECHAT_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist isChinaModel()Z
    .locals 6

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->mSalesCode:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->CHINA_SALES_CODES:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    sget-object v5, Lcom/samsung/android/app/SemDualAppManager;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static blacklist isChooserRequired(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.tencent.mm.plugin.base.stub.WXEntryActivity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.tencent.open.agent.AgentActivity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.tencent.mm.plugin.base.stub.WXPayEntryActivity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.sina.weibo.SSOActivity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static whitelist isDualAppId(I)Z
    .locals 1

    const/16 v0, 0x5f

    if-lt p0, v0, :cond_0

    const/16 v0, 0x63

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist isDualAppIdInternal(I)Z
    .locals 1

    const/16 v0, 0x5f

    if-lt p0, v0, :cond_0

    const/16 v0, 0x63

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isDualAppVersionSupported(I)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppVersion()I

    move-result v0

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static whitelist isInstalledWhitelistedPackage(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppIdInternal(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppService()Lcom/samsung/android/app/ISemDualAppManager;

    move-result-object v0

    const-string v2, "SemDualAppManager"

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0, p0}, Lcom/samsung/android/app/ISemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "isInstalledWhitelistedPackage : RemoteException occured"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string p0, "isInstalledWhitelistedPackage : Can not connect to DualAppManagerService"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static blacklist isKakaoThemeIntent(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->KAKAOTALK_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "kakaotalk://settings/theme/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isSamsungLauncher(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    sget-object v1, Lcom/samsung/android/app/SemDualAppManager;->SAMSUNG_LAUNCHER_APPS:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static blacklist shouldAddUserId(Landroid/net/Uri;I)Z
    .locals 2

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return p1

    :cond_1
    const-string v0, "com.android.contacts"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.android.calendar"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.android.providers.downloads.documents"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return p1
.end method

.method public static blacklist shouldRemove(Landroid/content/pm/ResolveInfo;)Z
    .locals 2

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.android.chrome"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist updateDualAppData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppService()Lcom/samsung/android/app/ISemDualAppManager;

    move-result-object v0

    const-string v1, "SemDualAppManager"

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/app/ISemDualAppManager;->updateDualAppData(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string/jumbo p0, "updateDualAppData : RemoteException occured"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo p0, "updateDualAppData : Can not connect to DualAppManagerService"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist addDualAppAccounts(Landroid/content/Context;Landroid/widget/LinearLayout;II)V
    .locals 16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "SemDualAppManager"

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v0}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v4

    array-length v6, v4

    if-nez v6, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v7

    array-length v8, v7

    const-string v0, "layout_inflater"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/LayoutInflater;

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v6, :cond_8

    aget-object v12, v4, v11

    move v0, v10

    :goto_1
    if-ge v0, v8, :cond_3

    iget-object v14, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    aget-object v15, v7, v0

    iget-object v15, v15, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    aget-object v0, v7, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v14, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v14, 0x0

    :goto_2
    if-nez v14, :cond_4

    move/from16 v13, p3

    move/from16 v15, p4

    goto/16 :goto_5

    :cond_4
    :try_start_1
    iget v0, v14, Landroid/accounts/AuthenticatorDescription;->iconId:I

    if-eqz v0, :cond_6

    iget-object v0, v14, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v10, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    iget-object v13, v14, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v13}, Landroid/content/pm/PackageManager;->semShouldPackIntoIconTray(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    iget v13, v14, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v0, v13}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v13, 0x1

    invoke-virtual {v15, v0, v13}, Landroid/content/pm/PackageManager;->semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v15, v0, v5}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_4

    :cond_5
    iget v13, v14, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v0, v13}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v15, v0, v5}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid icon id for account type "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v14, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bad package name for account type "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v14, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_7

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_7
    move/from16 v13, p3

    invoke-virtual {v9, v13, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iget-object v12, v12, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move/from16 v15, p4

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-virtual {v0, v10, v10, v12, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v12, 0x0

    invoke-virtual {v14, v0, v12, v12, v12}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in addDualAppAccounts "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_6
    return-void
.end method

.method public blacklist clearDuplicateMaps()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/SemDualAppManager;->mDuplicateInitialIntents:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public blacklist isDuplicateEntry(Landroid/content/pm/PackageManager;Ljava/util/List;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/Intent;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_6

    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppIdInternal(I)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_0
    instance-of v2, p4, Landroid/content/pm/LabeledIntent;

    if-eqz v2, :cond_1

    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/SemDualAppManager;->mDuplicateInitialIntents:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isChooserRequired(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isChinaDualApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mqqapi"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, p4}, Lcom/samsung/android/app/SemDualAppManager;->isKakaoThemeIntent(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/app/SemDualAppManager;->mDuplicateInitialIntents:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/SemDualAppManager;->addResolveInfoFromOtherUser(Landroid/content/pm/PackageManager;Ljava/util/List;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    :cond_6
    return v0
.end method

.method public blacklist isNeedAddResolveInfoForOtherUser(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppIdInternal(I)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_0
    instance-of v2, p2, Landroid/content/pm/LabeledIntent;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/SemDualAppManager;->mDuplicateInitialIntents:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Duplicate activity found for "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemDualAppManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isChooserRequired(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isChinaDualApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mqqapi"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/samsung/android/app/SemDualAppManager;->isKakaoThemeIntent(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/app/SemDualAppManager;->mDuplicateInitialIntents:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_6
    return v0
.end method

.method public whitelist isSupported()Z
    .locals 0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppIdInternal(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist isWhitelistedPackage(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppIdInternal(I)Z

    move-result p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_3

    const-string p0, ""

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getAllWhitelistedPackages()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method
