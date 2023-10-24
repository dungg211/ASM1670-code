using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace ASM1.Data.Migrations
{
    public partial class duaa : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "img",
                table: "Product");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "img",
                table: "Product",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");
        }
    }
}
