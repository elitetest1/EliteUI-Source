.class public final Landroid/service/controls/templates/StatelessTemplate;
.super Landroid/service/controls/templates/ControlTemplate;
.source "StatelessTemplate.java"


# direct methods
.method constructor blacklist <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/controls/templates/ControlTemplate;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/controls/templates/ControlTemplate;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist getTemplateType()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method
