.class public final Landroid/os/NewUserRequest;
.super Ljava/lang/Object;
.source "NewUserRequest.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/NewUserRequest$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mAccountName:Ljava/lang/String;

.field private final blacklist mAccountOptions:Landroid/os/PersistableBundle;

.field private final blacklist mAccountType:Ljava/lang/String;

.field private final blacklist mAdmin:Z

.field private final blacklist mEphemeral:Z

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mUserIcon:Landroid/graphics/Bitmap;

.field private final blacklist mUserType:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(Landroid/os/NewUserRequest$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/os/NewUserRequest$Builder;->-$$Nest$fgetmName(Landroid/os/NewUserRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/NewUserRequest;->mName:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/NewUserRequest$Builder;->-$$Nest$fgetmAdmin(Landroid/os/NewUserRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/NewUserRequest;->mAdmin:Z

    invoke-static {p1}, Landroid/os/NewUserRequest$Builder;->-$$Nest$fgetmEphemeral(Landroid/os/NewUserRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/NewUserRequest;->mEphemeral:Z

    invoke-static {p1}, Landroid/os/NewUserRequest$Builder;->-$$Nest$fgetmUserType(Landroid/os/NewUserRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/NewUserRequest;->mUserType:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/NewUserRequest$Builder;->-$$Nest$fgetmUserIcon(Landroid/os/NewUserRequest$Builder;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/os/NewUserRequest;->mUserIcon:Landroid/graphics/Bitmap;

    invoke-static {p1}, Landroid/os/NewUserRequest$Builder;->-$$Nest$fgetmAccountName(Landroid/os/NewUserRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/NewUserRequest;->mAccountName:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/NewUserRequest$Builder;->-$$Nest$fgetmAccountType(Landroid/os/NewUserRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/NewUserRequest;->mAccountType:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/NewUserRequest$Builder;->-$$Nest$fgetmAccountOptions(Landroid/os/NewUserRequest$Builder;)Landroid/os/PersistableBundle;

    move-result-object p1

    iput-object p1, p0, Landroid/os/NewUserRequest;->mAccountOptions:Landroid/os/PersistableBundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/NewUserRequest$Builder;Landroid/os/NewUserRequest-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/NewUserRequest;-><init>(Landroid/os/NewUserRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist getAccountName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/os/NewUserRequest;->mAccountName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getAccountOptions()Landroid/os/PersistableBundle;
    .locals 0

    iget-object p0, p0, Landroid/os/NewUserRequest;->mAccountOptions:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method public whitelist getAccountType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/os/NewUserRequest;->mAccountType:Ljava/lang/String;

    return-object p0
.end method

.method blacklist getFlags()I
    .locals 1

    invoke-virtual {p0}, Landroid/os/NewUserRequest;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/os/NewUserRequest;->isEphemeral()Z

    move-result p0

    if-eqz p0, :cond_1

    or-int/lit16 p0, v0, 0x100

    return p0

    :cond_1
    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/os/NewUserRequest;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getUserIcon()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Landroid/os/NewUserRequest;->mUserIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public whitelist getUserType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/os/NewUserRequest;->mUserType:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist isAdmin()Z
    .locals 0

    iget-boolean p0, p0, Landroid/os/NewUserRequest;->mAdmin:Z

    return p0
.end method

.method public whitelist isEphemeral()Z
    .locals 0

    iget-boolean p0, p0, Landroid/os/NewUserRequest;->mEphemeral:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NewUserRequest{mName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/os/NewUserRequest;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mAdmin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/os/NewUserRequest;->mAdmin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mEphemeral="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/os/NewUserRequest;->mEphemeral:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mUserType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/NewUserRequest;->mUserType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mAccountName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/NewUserRequest;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mAccountType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/NewUserRequest;->mAccountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mAccountOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/NewUserRequest;->mAccountOptions:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
