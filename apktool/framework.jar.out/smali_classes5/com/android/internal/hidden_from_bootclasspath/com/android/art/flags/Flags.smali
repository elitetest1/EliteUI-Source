.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ALWAYS_ENABLE_PROFILE_CODE:Ljava/lang/String; = "com.android.art.flags.always_enable_profile_code"

.field public static final blacklist FLAG_ART_SERVICE_V3:Ljava/lang/String; = "com.android.art.flags.art_service_v3"

.field public static final blacklist FLAG_EXECUTABLE_METHOD_FILE_OFFSETS:Ljava/lang/String; = "com.android.art.flags.executable_method_file_offsets"

.field public static final blacklist FLAG_EXECUTABLE_METHOD_FILE_OFFSETS_V2:Ljava/lang/String; = "com.android.art.flags.executable_method_file_offsets_v2"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist alwaysEnableProfileCode()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlags;->alwaysEnableProfileCode()Z

    move-result v0

    return v0
.end method

.method public static blacklist artServiceV3()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlags;->artServiceV3()Z

    move-result v0

    return v0
.end method

.method public static blacklist executableMethodFileOffsets()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist executableMethodFileOffsetsV2()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlags;->executableMethodFileOffsetsV2()Z

    move-result v0

    return v0
.end method
