.class public final Landroid/service/settings/preferences/SetValueResult;
.super Ljava/lang/Object;
.source "SetValueResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/settings/preferences/SetValueResult$Builder;,
        Landroid/service/settings/preferences/SetValueResult$ResultCode;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/settings/preferences/SetValueResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist RESULT_DISABLED:I = 0x2

.field public static final whitelist RESULT_DISALLOW:I = 0x7

.field public static final whitelist RESULT_INTERNAL_ERROR:I = 0x9

.field public static final whitelist RESULT_INVALID_REQUEST:I = 0x8

.field public static final whitelist RESULT_OK:I = 0x0

.field public static final whitelist RESULT_REQUIRE_APP_PERMISSION:I = 0x5

.field public static final whitelist RESULT_REQUIRE_USER_CONSENT:I = 0x6

.field public static final whitelist RESULT_RESTRICTED:I = 0x3

.field public static final whitelist RESULT_UNAVAILABLE:I = 0x4

.field public static final whitelist RESULT_UNSUPPORTED:I = 0x1


# instance fields
.field private final blacklist mResultCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/settings/preferences/SetValueResult$1;

    invoke-direct {v0}, Landroid/service/settings/preferences/SetValueResult$1;-><init>()V

    sput-object v0, Landroid/service/settings/preferences/SetValueResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/service/settings/preferences/SetValueResult;->mResultCode:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/service/settings/preferences/SetValueResult-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/settings/preferences/SetValueResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/service/settings/preferences/SetValueResult$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/service/settings/preferences/SetValueResult$Builder;->-$$Nest$fgetmResultCode(Landroid/service/settings/preferences/SetValueResult$Builder;)I

    move-result p1

    iput p1, p0, Landroid/service/settings/preferences/SetValueResult;->mResultCode:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/settings/preferences/SetValueResult$Builder;Landroid/service/settings/preferences/SetValueResult-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/settings/preferences/SetValueResult;-><init>(Landroid/service/settings/preferences/SetValueResult$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getResultCode()I
    .locals 0

    iget p0, p0, Landroid/service/settings/preferences/SetValueResult;->mResultCode:I

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p0, p0, Landroid/service/settings/preferences/SetValueResult;->mResultCode:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
