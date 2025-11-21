.class public final Landroid/service/settings/preferences/SetValueRequest;
.super Ljava/lang/Object;
.source "SetValueRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/settings/preferences/SetValueRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/settings/preferences/SetValueRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mPreferenceKey:Ljava/lang/String;

.field private final blacklist mPreferenceValue:Landroid/service/settings/preferences/SettingsPreferenceValue;

.field private final blacklist mScreenKey:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/settings/preferences/SetValueRequest$1;

    invoke-direct {v0}, Landroid/service/settings/preferences/SetValueRequest$1;-><init>()V

    sput-object v0, Landroid/service/settings/preferences/SetValueRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/service/settings/preferences/SetValueRequest;->mScreenKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/service/settings/preferences/SetValueRequest;->mPreferenceKey:Ljava/lang/String;

    const-class v0, Landroid/service/settings/preferences/SettingsPreferenceValue;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/service/settings/preferences/SettingsPreferenceValue;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/settings/preferences/SettingsPreferenceValue;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/settings/preferences/SettingsPreferenceValue;

    iput-object p1, p0, Landroid/service/settings/preferences/SetValueRequest;->mPreferenceValue:Landroid/service/settings/preferences/SettingsPreferenceValue;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/service/settings/preferences/SetValueRequest-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/settings/preferences/SetValueRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/service/settings/preferences/SetValueRequest$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/service/settings/preferences/SetValueRequest$Builder;->-$$Nest$fgetmScreenKey(Landroid/service/settings/preferences/SetValueRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SetValueRequest;->mScreenKey:Ljava/lang/String;

    invoke-static {p1}, Landroid/service/settings/preferences/SetValueRequest$Builder;->-$$Nest$fgetmPreferenceKey(Landroid/service/settings/preferences/SetValueRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SetValueRequest;->mPreferenceKey:Ljava/lang/String;

    invoke-static {p1}, Landroid/service/settings/preferences/SetValueRequest$Builder;->-$$Nest$fgetmPreferenceValue(Landroid/service/settings/preferences/SetValueRequest$Builder;)Landroid/service/settings/preferences/SettingsPreferenceValue;

    move-result-object p1

    iput-object p1, p0, Landroid/service/settings/preferences/SetValueRequest;->mPreferenceValue:Landroid/service/settings/preferences/SettingsPreferenceValue;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/settings/preferences/SetValueRequest$Builder;Landroid/service/settings/preferences/SetValueRequest-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/settings/preferences/SetValueRequest;-><init>(Landroid/service/settings/preferences/SetValueRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getPreferenceKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/settings/preferences/SetValueRequest;->mPreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getPreferenceValue()Landroid/service/settings/preferences/SettingsPreferenceValue;
    .locals 0

    iget-object p0, p0, Landroid/service/settings/preferences/SetValueRequest;->mPreferenceValue:Landroid/service/settings/preferences/SettingsPreferenceValue;

    return-object p0
.end method

.method public whitelist getScreenKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/settings/preferences/SetValueRequest;->mScreenKey:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/service/settings/preferences/SetValueRequest;->mScreenKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/settings/preferences/SetValueRequest;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/service/settings/preferences/SetValueRequest;->mPreferenceValue:Landroid/service/settings/preferences/SettingsPreferenceValue;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
