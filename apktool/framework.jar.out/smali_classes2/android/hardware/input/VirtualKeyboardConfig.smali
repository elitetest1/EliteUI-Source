.class public final Landroid/hardware/input/VirtualKeyboardConfig;
.super Landroid/hardware/input/VirtualInputDeviceConfig;
.source "VirtualKeyboardConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/VirtualKeyboardConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/VirtualKeyboardConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEFAULT_LANGUAGE_TAG:Ljava/lang/String; = "en-Latn-US"

.field public static final whitelist DEFAULT_LAYOUT_TYPE:Ljava/lang/String; = "qwerty"


# instance fields
.field private final blacklist mLanguageTag:Ljava/lang/String;

.field private final blacklist mLayoutType:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/input/VirtualKeyboardConfig$1;

    invoke-direct {v0}, Landroid/hardware/input/VirtualKeyboardConfig$1;-><init>()V

    sput-object v0, Landroid/hardware/input/VirtualKeyboardConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/input/VirtualKeyboardConfig$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualInputDeviceConfig;-><init>(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)V

    invoke-static {p1}, Landroid/hardware/input/VirtualKeyboardConfig$Builder;->-$$Nest$fgetmLanguageTag(Landroid/hardware/input/VirtualKeyboardConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/VirtualKeyboardConfig;->mLanguageTag:Ljava/lang/String;

    invoke-static {p1}, Landroid/hardware/input/VirtualKeyboardConfig$Builder;->-$$Nest$fgetmLayoutType(Landroid/hardware/input/VirtualKeyboardConfig$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/input/VirtualKeyboardConfig;->mLayoutType:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/input/VirtualKeyboardConfig$Builder;Landroid/hardware/input/VirtualKeyboardConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualKeyboardConfig;-><init>(Landroid/hardware/input/VirtualKeyboardConfig$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualInputDeviceConfig;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/VirtualKeyboardConfig;->mLanguageTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/input/VirtualKeyboardConfig;->mLayoutType:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/input/VirtualKeyboardConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualKeyboardConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method blacklist additionalFieldsToString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " languageTag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/input/VirtualKeyboardConfig;->mLanguageTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " layoutType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/hardware/input/VirtualKeyboardConfig;->mLayoutType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getLanguageTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/VirtualKeyboardConfig;->mLanguageTag:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getLayoutType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/VirtualKeyboardConfig;->mLayoutType:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/hardware/input/VirtualInputDeviceConfig;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Landroid/hardware/input/VirtualKeyboardConfig;->mLanguageTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/hardware/input/VirtualKeyboardConfig;->mLayoutType:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    return-void
.end method
