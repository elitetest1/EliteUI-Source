.class public final Landroid/app/Instrumentation$ActivityResult;
.super Ljava/lang/Object;
.source "Instrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityResult"
.end annotation


# instance fields
.field private final greylist-max-o mResultCode:I

.field private final greylist-max-o mResultData:Landroid/content/Intent;


# direct methods
.method public constructor whitelist <init>(ILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/Instrumentation$ActivityResult;->mResultCode:I

    iput-object p2, p0, Landroid/app/Instrumentation$ActivityResult;->mResultData:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public whitelist getResultCode()I
    .locals 0

    iget p0, p0, Landroid/app/Instrumentation$ActivityResult;->mResultCode:I

    return p0
.end method

.method public whitelist getResultData()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Landroid/app/Instrumentation$ActivityResult;->mResultData:Landroid/content/Intent;

    return-object p0
.end method
