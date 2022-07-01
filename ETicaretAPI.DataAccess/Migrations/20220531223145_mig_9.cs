using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace ETicaretAPI.DataAccess.Migrations
{
    public partial class mig_9 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<bool>(
                name: "BasketStatus",
                table: "Baskets",
                type: "bit",
                nullable: false,
                defaultValue: false);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "BasketStatus",
                table: "Baskets");
        }
    }
}
