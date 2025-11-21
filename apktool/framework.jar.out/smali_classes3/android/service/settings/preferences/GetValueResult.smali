.class public final Landroid/service/settings/preferences/GetValueResult;
.super Ljava/lang/Object;
.source "GetValueResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/settings/preferences/GetValueResult$Builder;,
        Landroid/service/settings/preferences/GetValueResult$ResultCode;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/settings/preferences/GetValueResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist RESULT_DISALLOW:I = 0x4

.field public static final whitelist RESULT_INTERNAL_ERROR:I = 0x6

.field public static final whitelist RESULT_INVALID_REQUEST:I = 0x5

.field public static final whitelist RESULT_OK:I = 0x0

.field public static final whitelist RESULT_REQUIRE_APP_PERMISSION:I = 0x3

.field public static final whitelist RESULT_UNAVAILABLE:I = 0x2

.field public static final whitelist RESULT_UNSUPPORTED:I = 0x1


# instance fields
.field private final blacklist mMetadata:Landroid/service/settings/preferences/SettingsPreferenceMetadata;

.field private final blacklist mResultCode:I

.field private final blacklist mValue:Landroid/service/settings/preferences/SettingsPreferenceValue;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/settings/preferences/GetValueResult$1;

    invoke-direct {v0}, Landroid/service/settings/preferences/GetValueResult$1;-><init>()V

    sput-object v0, Landroid/service/settings/preferences/GetValueResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/settings/preferences/GetValueResult;->mResultCode:I

    const-class v0, Landroid/service/settings/preferences/SettingsPreferenceValue;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/service/settings/preferences/SettingsPreferenceValue;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/settings/preferences/SettingsPreferenceValue;

    iput-object v0, p0, Landroid/service/settings/preferences/GetValueResult;->mValue:Landroid/service/settings/preferences/SettingsPreferenceValue;

    const-class v0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/service/settings/preferences/SettingsPreferenceMetadata;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/settings/preferences/SettingsPreferenceMetadata;

    iput-object p1, p0, Landroid/service/settings/preferences/GetValueResult;->mMetadata:Landroid/service/settings/preferences/SettingsPreferenceMetadata;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/service/settings/preferences/GetValueResult-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/settings/preferences/GetValueResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/service/settings/preferences/GetValueResult$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/service/settings/preferences/GetValueResult$Builder;->-$$Nest$fgetmResultCode(Landroid/service/settings/preferences/GetValueResult$Builder;)I

    move-result v0

    iput v0, p0, Landroid/service/settings/preferences/GetValueResult;->mResultCode:I

    invoke-static {p1}, Landroid/service/settings/preferences/GetValueResult$Builder;->-$$Nest$fgetmValue(Landroid/service/settings/preferences/GetValueResult$Builder;)Landroid/service/settings/preferences/SettingsPreferenceValue;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/GetValueResult;->mValue:Landroid/service/settings/preferences/SettingsPreferenceValue;

    invoke-static {p1}, Landroid/service/settings/preferences/GetValueResult$Builder;->-$$Nest$fgetmMetadata(Landroid/service/settings/preferences/GetValueResult$Builder;)Landroid/service/settings/preferences/SettingsPreferenceMetadata;

    move-result-object p1

    iput-object p1, p0, Landroid/service/settings/preferences/GetValueResult;->mMetadata:Landroid/service/settings/preferences/SettingsPreferenceMetadata;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/settings/preferences/GetValueResult$Builder;Landroid/service/settings/preferences/GetValueResult-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/settings/preferences/GetValueResult;-><init>(Landroid/service/settings/preferences/GetValueResult$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getMetadata()Landroid/service/settings/preferences/SettingsPreferenceMetadata;
    .locals 0

    iget-object p0, p0, Landroid/service/settings/preferences/GetValueResult;->mMetadata:Landroid/service/settings/preferences/SettingsPreferenceMetadata;

    return-object p0
.end method

.method public whitelist getResultCode()I
    .locals 0

    iget p0, p0, Landroid/service/settings/preferences/GetValueResult;->mResultCode:I

    return p0
.end method

.method public whitelist getValue()Landroid/service/settings/preferences/SettingsPreferenceValue;
    .locals 0

    iget-object p0, p0, Landroid/service/settings/preferences/GetValueResult;->mValue:Landroid/service/settings/preferences/SettingsPreferenceValue;

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/service/settings/preferences/GetValueResult;->mResultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/settings/preferences/GetValueResult;->mValue:Landroid/service/settings/preferences/SettingsPreferenceValue;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Landroid/service/settings/preferences/GetValueResult;->mMetadata:Landroid/service/settings/preferences/SettingsPreferenceMetadata;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
