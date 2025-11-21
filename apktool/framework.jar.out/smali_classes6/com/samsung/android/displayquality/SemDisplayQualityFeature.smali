.class public Lcom/samsung/android/displayquality/SemDisplayQualityFeature;
.super Ljava/lang/Object;
.source "SemDisplayQualityFeature.java"


# static fields
.field public static final blacklist ADAPTIVE_SYNC_SUPPORT:Z

.field public static final blacklist DP_BACKOFF_SUPPORT:Z

.field public static final blacklist DP_DEBUG_SUPPORT:Z

.field public static final blacklist DP_RATIO_SUPPORT:Z

.field private static final blacklist DQ_SVC_FEATURE:Ljava/lang/String; = ""

.field public static final blacklist ENABLED:Z = false

.field public static final blacklist HAL_SUPPORT:Z

.field private static final blacklist HAS_OPTION:Z

.field public static final blacklist LTM_SUPPORT:Z

.field public static final blacklist OUTDOOR_VISIBILITY_SUPPORT:Z

.field public static final blacklist PLATFORM:Ljava/lang/String;

.field public static final blacklist SVI_SUPPORT:Z

.field public static final blacklist VIVID_PLUS_SUPPORT:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    const-string v0, ""

    sput-object v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->PLATFORM:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    sput-boolean v1, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->HAS_OPTION:Z

    const-string v4, "MTK"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    sput-boolean v2, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->OUTDOOR_VISIBILITY_SUPPORT:Z

    sput-boolean v3, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ADAPTIVE_SYNC_SUPPORT:Z

    sput-boolean v3, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->LTM_SUPPORT:Z

    sput-boolean v3, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->SVI_SUPPORT:Z

    sput-boolean v3, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->HAL_SUPPORT:Z

    sput-boolean v3, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->VIVID_PLUS_SUPPORT:Z

    sput-boolean v3, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->DP_RATIO_SUPPORT:Z

    sput-boolean v3, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->DP_DEBUG_SUPPORT:Z

    sput-boolean v3, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->DP_BACKOFF_SUPPORT:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
